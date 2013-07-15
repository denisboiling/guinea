class OnlineRequestsController < ApplicationController

  def new
    @online_request = OnlineRequest.new
  end

  def create
    @online_request = OnlineRequest.new(params[:online_request])
    if @online_request.save
      AdminUser.all.each do |user|
        OnlineRequestMailer.new_request_email(user.email, @online_request).deliver
      end
      render json: {}, status: :ok
    else
      render json: { errors: @online_request.errors.messages },
             status: :unprocessable_entity
    end
  end

end

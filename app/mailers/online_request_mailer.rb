class OnlineRequestMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_request_email(recepient, online_request)
    @online_request = online_request
    mail(to: recepient, subject: 'You have new online request', from: online_request.email)
  end
end

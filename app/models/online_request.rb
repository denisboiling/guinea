class OnlineRequest < ActiveRecord::Base
  attr_accessible :email, :first_name, :patronymic, :phone,
                  :registration_address, :birth_date, :last_name

  validates :first_name, :last_name, :patronymic,  presence: true
  validates :birth_date, :phone, :registration_address, presence: true
  validates :email, email: true
end

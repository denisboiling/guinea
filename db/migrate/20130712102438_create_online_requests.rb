class CreateOnlineRequests < ActiveRecord::Migration
  def change
    create_table :online_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :patronymic
      t.string :phone
      t.string :email
      t.string :registration_address
      t.date :birth_date

      t.timestamps
    end
  end
end

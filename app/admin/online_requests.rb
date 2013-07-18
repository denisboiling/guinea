ActiveAdmin.register OnlineRequest do

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :patronymic
      f.input :phone
      f.input :email
      f.input :registration_address
      f.input :birth_date
    end

    f.actions
  end

end

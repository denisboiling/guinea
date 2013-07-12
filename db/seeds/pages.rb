#coding: utf-8

Page.reset_column_information
Page.create!(slug: 'index', name: 'Главная', hidden: true)
Page.create!(slug: 'about', name: 'О нас')
Page.create!(slug: 'info_for_borrower', name: 'Информация для заемщика')
Page.create!(slug: 'current_lenging_programs',
             name: 'Действующие программы предоставления займов')
Page.create!(slug: 'insurance', name: 'Страхование')
Page.create!(slug: 'your_credit_history', name: 'Ваша кредитная история', hidden: true)
Page.create!(slug: 'correct_credit_history', name: 'Исправить кредитную историю', hidden: true)
Page.create!(slug: 'fill_online_request', name: 'Заполнить заявку Online', hidden: true)
Page.create!(slug: 'contacts', name: 'Связаться с нами', hidden: true)
Page.create!(slug: 'inbki_reference', name: 'Справка ИНБКИ', hidden: true)

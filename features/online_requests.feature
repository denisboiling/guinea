Feature: Online requests

@javascript
  Scenario: Sending online request
    Given there is a admin user with the email "admin@example.com"
    When I am on the online request page
    And I fill in "Имя" with "Дуб"
    And I fill in "Фамилия" with "Дубовый"
    And I fill in "Отчество" with "Дубович"
    And I fill in "Адрес регистрации" with "Дубовый лес"
    And I select birth date "2 июля 1920"
    And I fill in "Телефон" with "8-111-11-11-111"
    And I fill in "Емайл" with "oak@forest.ru"
    When I press "Отправить"
    And I wait for the ajax request to finish
    Then I should see "Ваша заявка отправлена!"
    Then "admin@example.com" should receive an email with subject "You have new online request"


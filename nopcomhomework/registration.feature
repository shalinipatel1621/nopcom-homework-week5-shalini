Feature: Nopcommerce Registration

  As a user, I want to check the register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Google Chrome browser
    When I open the URL "https://demo.nopcommerce.com/register"
    Then I am on Nopcommerce Registration Page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<first name">
    And I enter last name <"last name">
    And I enter email address <"email">
    And I enter password <"password">
    And I enter confirm password "<confirm password">
    And I click on register button
    Then I can see an error message <"error message">
    And I am not able to register

    Examples:

      | first name | last name | email             | password | confirm password | error message                              |
      |            | syam      | syam123@gmail.com | 123456   | 123456           | please enter first name                    |
      | ram        |           | syam123@gmail.com | 123456   | 123456           | please enter last name                     |
      | ram        | syam      |                   | 123456   | 123456           | please enter valid email                   |
      | ram        | syam      | syam123@gmail.com |          | 123456           | please enter password                      |
      | ram        | syam      | syam123@gmail.com | 123456   |                  | confirm password is required               |
      | ram        | syam      | syam123@gmail.com | 123456   | 123654           | password and confirm password do not match |
      | ram        | syam      | syam123@gmail.com | 12345    |                  | minimum 6 character password is required   |
      |            |           |                   |          |                  | Mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from Gender label of Your Personal Details section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of Birth field
    When I select day <"day>
    And I select month <"month">
    And I select year <"year">
    Then I am able to select Day, Month and Year from drop down list

    Examples:

      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    When I click on Newsletter label on Options section
    And I click on Newsletter checkbox again
    Then I am able to check and uncheck the Newsletter checkbox

  Scenario: I should be able to register with a valid mandatory (*) field data on registration page
    When I enter first name "Ram"
    And I enter last name "Syam"
    And I enter email "syam123@gmail.com"
    And I enter password "123456"
    And I enter confirm password "123456"
    And I click on register button
    Then I am able to register succesfully


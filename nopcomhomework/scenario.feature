Feature: Demo Nopcommerce's top menu Acceptance Criteria

  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Scenario: Verify that user can navigate to Books category
    Given User type URL "https://demo.nopcommerce.com" on browser
    When User click on Enter button
    And User is on homepage
    Then User clicks on Books tab on top menu
    And User is navigated to Books Category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    Given User is on homepage
    And User clicks on books tab on top menu
    And User checks Filters and List tab
    Then Books category page is displayed with Filters and List tabs

  Scenario: Verify that user can see 'Sort by' filter on Book Category page
    Given User is on Books Category page
    When User checks 'Sort by' filter is present
    Then User can see 'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given User is Books Category page
    When User checks 'Display' filter is present
    Then User can see 'Display' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When User checks 'Grid' tab is present
    Then User can see 'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books Category page
    When User checks 'List' tab is present
    Then User can see 'List' tab is available on Books Category page

  Scenario: Verify user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When User clicks on 'Sort by' filter
    And check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: Z to A' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When User clicks on 'Sort by' filter
    And Check that 'Name: Z to A' selection is present
    Then 'Name: Z to A' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected
    Given User is on Books Category page
    When User clicks on 'Sort' by filter
    And User selects 'Name: A to Z' filter
    Then All products are displayed in alphabetical order



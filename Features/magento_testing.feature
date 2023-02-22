Feature: Testing the functionality of magento.softwaretestingboard.com webpage


  Background:
    Given Home page: I am on magento.softwaretestingboard.com starting page

  @TEST1
  Scenario: Testing the magento.softwaretestingboard.com home page

    When  Home page: I check if I am on the right page
    Then  Home page: Check that the welcome message is displayed

  @TEST2
  Scenario: Testing the functionality of creating a user account on magento.softwaretestingboard.com

    When  Home page: Press the Create an Account link
    When  Create account page: Enter "Mihai" "Barbulescu" and "micbvcoooiss@gmail.com"
    When  Create account page: Sign Up for Newsletter
    When  Create account page: Enter a  weak password "{parol}"
    Then  Create account page: Check message and change password to a stronger one"PARola123"
    When  Create account page: Enter the password in the confirmation-password textbox"PARola123"
    Then  Create account page: Click the Create Account button
    Then  Create account page: Check if the registering message is displayed

  @TEST3
  Scenario: Choose shopping options and add item to cart

    When  Home page: I click on the Men button category
    When  Men category page: I click on the jacket category
    When  Men category page: Choose shopping option style
    When  Men category page: Choose shopping option performance-fabric
    Then  Men category page: Sort the resulting items by "Price"
    When  Men category page: Select the cheapest jacket
    When  Men category page: Select size and color of the jacket
    Then  Men category page: Add to cart the desired jacket

  @TEST4
  Scenario: Enter shipping address

    When  Home page: Click the cart button
    Then  Home page: Click the Proceed checkout button
    When  Checkout page: Enter "str. Valcica nr.214" address
    When  Checkout page: Select "Romania" and "Suceava"
    When  Checkout page: Enter "123456" and "Falticeni"
    When  Checkout page: Enter "0745612370" number
    Then  Checkout page: Click next and place order buttons

  @TEST5
  Scenario Outline: Add items to wish list and review them

    When  Home page: I search for a specific "<item_name>"
    Then  Home page: Adding the item to the wish list
    When  Home page: Click the reviews button
    When  Home page: Set a rating for the item
    When  Home page: Write the "<review_title>" and the "<text_review>"
    Then  Home page: Click submit review and check the confirmation message
    Examples:
      |item_name      | review_title|                   text_review                               |
      |Driven Backpack|Un rucsac ok |Un raport pret-calitate bun, nu exceleaza dar isi face treaba|
      |Clamber Watch  |Pret buna    |L-am cumparat pentru sotia mea si a fost multumita           |















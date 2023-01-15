@smokeTest
Feature: Retail Home Page

  @allSection
  Scenario: Verify Shop by Department sidebar
    Given User is on retail website
    When User click on All section
    Then below options are present in shop by Department sidebar
      | Electronics | Computers | Smart Home | Sports | Automative |

  @sidebarOptions
  Scenario Outline: Verify department sidebar options
    Given User is on retail website
    When User click on All section
    And User click on <department>
    Then below options are present in department
      | <optionOne> | <optionTwo> |

    Examples: 
      | department    | optionOne                        | optionTwo                  |
      | 'Electronics' | 'TV & Video'                     | 'Video Games'              |
      | 'Computers'   | 'Accessories'                    | 'Networking'               |
      | 'Smart Home'  | 'Smart Home Lightning'           | 'Plugs and Outlets'        |
      | 'Sports'      | 'Athletic Clothing'              | 'Exercise & Fitness'       |
      | 'Automotive'  | 'Automative Parts & Accessories' | 'MotorCycle & Powersports' |

  @addingToCart
  Scenario: Verify User can add an item to cart
    Given User is on retail website
    When User click on Sign In option
    And User enter email 'MichaelJohn8@gmail.com' and password '123456@Shaah'
    And User click on login button
    And User should be logged in into account
    And User change the category to 'Smart Home'
    And User search for an item 'kasa outdoor smart plug'
    And User click on search icon
    And User click on item
    And User select quantity '2'
    And User click add to Cart button
    Then the cart icon quantity should change to '2'
  #above scenario will fail without wait time that is why
  #I used wait in some steps of above scenario
  
  @orderWOShippindAdd
  Scenario: Verify User can place an order without Shipping address and payment Method on file
    Given User is on retail website
    When User click on Sign In option
    And User enter email 'MichaelJohn8@gmail.com' and password '123456@Shaah'
    And User click on login button
    And User should be logged in into account
    And User change the category to 'Smart Home'
    And User search for an item 'kasa outdoor smart plug'
    And User click on search icon
    And User click on item
    And User select quantity '2'
    And User click add to Cart button
    And the cart icon quantity should change to '2'
    And User click on cart option
    And User click on Proceed to Checkout button
    And User click add a new address link for shipping address
    And User fill new address Form With Below Information
      | country       | fullName     | phoneNumber | streetAddress  | apt | city     | state    | zipCode |
      | United States | MichaelJohn |  2027947123 | 1264 12th Street | 912 | Nashville | Tennessee |   42016 |
    And User click Add Your Address button
    And User click Add a credit card or Debit card for payment Method
    And User Fill Debit or Credit Card Information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 4737030068367286 | MichaelJohn     |              08 |           2029 |          842 |
    And User click on add your card button
    And User click on place your order
    Then a message Should Be Displayed 'Order Placed, Thanks'

  @orderWShipping
  Scenario: Verify User can place an order with Shipping address and payment Method on file
    Given User is on retail website
    When User click on Sign In option
    And User enter email 'MichaelJohn8@gmail.com' and password '123456@Shaah'
    And User click on login button
    And User should be logged in into account
    And User Change the category to 'Electronics'
    And User search for an Item 'Apex Legends'
    And User click on search icon
    And User click on Item
    And User select Quantity '5'
    And User click add to Cart button
    Then the cart icon quantity should change to '9'
    And User click on cart option
    And User click on Proceed to Checkout button
    And User click on place your order
    Then a message Should Be Displayed 'Order Placed, Thanks'


@smokeTest
Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign In option
    And User enter email 'MichaelJohn8@gmail.com' and password '12345@Shah'
    And User click on login button
    And User should be logged in into account

  @accountInfo
  Scenario: Verify user can update Profile information
    When User click on Account option
    And User update Name 'MichaelJohn' and Phone '202-435-2212'
    And User click on update option
    Then User profile information should be updated

  @passChange
  Scenario: Verify User Can Update Password
    When User click on Account option
    And User enter below information
      | previousPassword | newPassword | confrimPassword |
      | 12345@Shah       | 123456@Shaah  | 123456@Shaah      |
    And User click on change password button
    Then a message should be displayed 'Password Updated Successfully'
    #Run above scenario after running all other scenarios because it will change the 
    #password value and all other scenarios will fail in sign in step 

  @addingPaymentMethod
  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on add a payment method link
    And User fill Debit or Credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 4737030087810762 | MichaelJohn  |              08 |           2028 |          417 |
    And User click on add your card button
    Then A message should be displayed 'Payment Method added sucessfully'

  @updatingCard
  Scenario: Verify User can edit Debit or Credit card
    When User click on Account option
    And User click on edit option of card section
    And User edit information with below data
      | cardNumber       | nameOnCard  | expirationMonth | expirationYear | securityCode |
      | 4737030068367286 | MichaelJohn |              08 |           2029 |          842 |
    And User click on Update your card button
    Then a Message should be displayed 'Payment Method updated Successfully'

  @removingCard
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    And User click on remove option of card section
    Then Payment details should be removed

  @addingAddress
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on add Address option
    And User fill new address form with below information
      | country       | fullName    | phoneNumber | streetAddress      | apt | city         | state    | zipCode |
      | United States | MichaelJohn |  202-435-2212 | 443 Sanger Ave | 113 | Alexandria | Virginia |   22764 |
    And User click Add Your Address button
    Then a Message should Be Displayed 'Address Added Successfully'

  @updatingAddress
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And User fill new address form with below Information
      | country | fullName   | phoneNumber | streetAddress       | apt | city     | state     | zipCode |
      | United States  | MichaelJohn |  2027947123 | 715 Main Street | 812 | Fairfax | Virginia |   24346 |
    And User click update your address button
    Then a mesaage Should Be displayed 'Address Updated Successfully'

	@removingAddress
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of address section
    Then Address details should be removed

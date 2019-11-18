Feature: Add a new homework assigment
  
  As a student
  So that I can easily see the homework on the calendar
  I wan to be able to add a new homework assigment

Scenario: As a student I want to be able to navigate from the homepage to the new homework form
  Given I am on the home page
  When I click on the "Create Homework" link
  Then I should be on the "New Homework" page
  And I should see the "Hw name" field
  And I should see the "Due date" field
  And I should see the "Time required" field
  And I should see the "Note" field
  
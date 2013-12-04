Feature: 
  A new subject is created to determine
  their life span. They enter there name age
  sex drinking smoking and hanky habits.
.
  Scenario: subject enters info
    Given the subject has not entered their info
    When the subject enters their name and age and sex
    Then the subject will recieve the message "here is your life span"
   

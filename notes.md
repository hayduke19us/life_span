#### Life

**Feature:**

Joy is determined by quality of life and length of life.
Quality of life is determined by happy days per week. Lifespan is by default seventy-seven, but is altered by controllable health and social decisions. 
 
*Genetic determinants are excluded from this program because of the extensive variance Generic determinants cause. This is a study on the way controllable health and social decisions increase ones life span. Hypothetical subjects are different ages, different sexes, but all generally healthy.    

**Scenario:** New Subject
Given I have not created a subject
When  I create a new subject
Then  I enter my name age and lifespan

**Scenario:** Calculate Lifespan
Given I am generally healthy
When  I start to calculate lifespan
Then  I enter my sex, smoking, drinking, and hanky habits.

**Scenario:** Calculate Joy
Given I can remember how happy I am a week
When  I start to calculate my days happy per week
Then  I enter how many days per week I am happy
And   My days per week gets turned into days per year.

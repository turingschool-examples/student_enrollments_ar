# Student Enrollments
## Many to Many Practice

Start by writing db migrations and setting up the M2M relationship:

1. Create a courses table. Courses have a name, and belong to a teacher. Include the necessary reference to the teachers table.
2. Create an enrollments (joins) table: Courses have many students and students can enroll in multiple courses. Each enrollment has the necessary foreign keys, and a grade (integer)
3. Set up the necessary models and model specs with relationship assertions.


## Complex Queries

This repository is a reworking of the [Complex Queries workshop](https://backend.turing.edu/module2/misc/complex_queries) that can be completed as SQL-only; this repository will ask the same questions but can be completed using ActiveRecord or SQL. 

RSpec, Shoulda-Matchers, and SimpleCov have been set up for you. 

This repository has been tested with Ruby 3.2.2 and Rails 7.1.2. 

## Setup
1. `bundle install`
1. `rails db:{drop,create}`

You will need to create all migrations. 

## Instructions
We are creating an application to track student enrollments in our school. To do this, we'll need to track `Students`, `Courses`, `Teachers`, and `Enrollments`. Do not change the name of the columns described here or your pre-existing test data will break (see `spec_helper` test data method).

Students have a name. 
Teachers have a name and room_number.
Courses have a name and teacher_id. 
Enrollments have a student_id, course_id, and a grade (integer). 

Courses have one Teacher. 
Students can be enrolled in many Courses. 
Courses have many Students. (The join table in this case can be called "enrollments".) 

## Data Setup
- First, write migrations to fulfill the above model descriptions. 
- Then, write model tests (there is a skeleton in the existing model specs) to set up associations between each model. Make sure your model tests are always at 100% coverage. 


## Exercises

Check out the `test_data` method in `spec_helper` to see the test data you will start with in each model test.

Note: These user stories are focused on writing AR queries. You could also try going into Rails dbconsole and writing SQL to verify you get the same response! 


1. Student Courses

Model method returns the list of course names a student is enrolled in.
Example: Peter (@student2) => ["Yoga", "Gym"]

2. Student Course Count

Model method returns the number of courses a student is enrolled in
Example: Peter (@student2) => 2

3. Teacher's Students

Model method returns the unique list of students for a given teacher
Example: Mr. Phillips (@teacher1) => ["Penelope", "Pamela", "Phoebe", "Patrick", "Peter", "Pepe", "Pajak"]

Bonus: Return the list of students in alphabetical order

4. Student's Teachers

Model method returns the unique list of teachers that a given student has
Example: Peter (@student2) => ["Phillips", "Mauch"]

5. Class Average

Model method returns the average grade for a given course.
Example: Social Studies (@course8) => 88.5

6. Students Below Average

Model method returns the list of student names that have a grade below the class average
Example: Social Students (@course8) => ["Patricia", "Piper"]


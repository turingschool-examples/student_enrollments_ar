class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  # has_many :teachers, through: :courses

  def all_courses
    # AR IMPLEMENTATION
    # self.courses.order(:name).pluck(:name)

    # SQL IMPLEMENTATION
    sql = "SELECT courses.name FROM students
          JOIN enrollments
            ON students.id = enrollments.student_id
          JOIN courses
            ON enrollments.course_id = courses.id
          WHERE students.id = #{self.id}
          ORDER BY courses.name;"

    # .find_by_sql is easier from the model you want your result in. In this case, 
    # we want a list of courses returned, so I'm going to run from Course model
    # even though with AR, this is run from a Student instance method. 
    result = Course.find_by_sql(sql)
    result.pluck(:name)
  end

  def course_count
    self.courses.count
  end

  def all_teachers
    self.courses.joins(:teacher).select("teachers.*").distinct("teachers.name").pluck("teachers.name")

    # OR, with that additional association commented out above...
    # self.teachers.distinct.pluck(:name)
  end
end
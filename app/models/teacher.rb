class Teacher < ApplicationRecord
  has_many :courses
  # has_many :students, through: :courses

  def all_students
    self.courses.joins(:students).distinct("students.name").pluck("students.name")
  
    # OR, if we add the below association to teacher...
    # has_many :students, through: :courses
    # self.students.distinct.pluck(:name)
  end
end
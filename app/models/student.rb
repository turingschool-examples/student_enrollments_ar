class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  def all_courses
    self.courses.order(:name).pluck(:name)
  end
end
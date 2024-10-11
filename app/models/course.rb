class Course < ApplicationRecord
  belongs_to :teacher
  has_many :enrollments
  has_many :students, through: :enrollments

  def course_average
    self.enrollments.average(:grade)
  end

  def students_below_average
    enrollments.joins(:student).where("enrollments.grade < ?", self.course_average).select("students.*").pluck("students.name")
  end
end
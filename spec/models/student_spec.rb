require "rails_helper"

RSpec.describe Student, type: :model do
  describe "relationships" do
    it { should have_many :enrollments }
    it { should have_many(:courses).through(:enrollments) }
  end

  describe "model methods" do
    before :each do
      test_data
    end

    it "#all_courses" do
      expect(@student2.all_courses).to eq(["Gym", "Yoga"])
    end

    it "#course_count" do
      expect(@student2.course_count).to eq(2)
    end

    it "#all_teachers" do
      expect(@student2.all_teachers.sort).to eq(["Phillips", "Mauch"].sort)
    end
  end
end
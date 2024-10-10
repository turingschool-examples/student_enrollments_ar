require "rails_helper"

RSpec.describe Student, type: :model do
  describe "relationships" do

  end

  describe "model methods" do
    before :each do
      test_data
    end

    it "#all_courses" do
      expect(@student2.all_courses).to eq(["Gym", "Yoga"])
    end

    it "#course_count" do
    
    end

    it "#all_teachers" do

    end
  end
end
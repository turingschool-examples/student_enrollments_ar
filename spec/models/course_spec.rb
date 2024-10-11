require "rails_helper"

RSpec.describe Course, type: :model do
  describe "relationships" do
    it { should belong_to :teacher }
    it { should have_many :enrollments }
    it { should have_many(:students).through(:enrollments) }
  end

  before :each do
    test_data
  end
  it "#course_average" do
    expect(@course8.course_average).to eq(88.5)
  end

  it "#students_below_average" do
    expect(@course8.students_below_average).to eq(["Patricia", "Piper"])
  end
end
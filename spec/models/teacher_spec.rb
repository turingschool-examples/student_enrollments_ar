require "rails_helper"

RSpec.describe Teacher, type: :model do
  describe "relationships" do
    it { should have_many :courses }
    # it { should have_many(:students).through(:courses) }
  end

  describe "model methods" do
    before :each do
      test_data
    end 

    it "#all_students" do
      expect(@teacher1.all_students.sort).to eq(["Penelope", "Pamela", "Phoebe", "Patrick", "Peter", "Pepe", "Pajak"].sort)
    end
  end
end
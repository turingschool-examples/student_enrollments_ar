require "rails_helper"

RSpec.describe Enrollment, type: :model do
  describe "relationships" do
    it { should belong_to :student }
    it { should belong_to :course }
  end

  describe "model methods" do
    before :each do
      test_data
    end  
  end
end
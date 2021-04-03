# Using the "shoulda matchers" gem to test for associations
require 'rails_helper'

describe Elevator, type: :model do
  context "Associations" do
    it { should belong_to(:column).without_validating_presence }
  end

  context "Validations" do
    it { should validate_presence_of(:column) }
    
    it "is not valid without a status" do
      subject.status = nil
      
      expect(subject).to_not be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :street }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :postal }
    it { should validate_presence_of :latitude }
    it { should validate_presence_of :longitude }
  end

  describe 'associations' do
    it { should have_one :order }
    it { should belong_to :user }
  end
  
end

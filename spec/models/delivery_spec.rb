require 'rails_helper'

RSpec.describe Delivery, type: :model do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :street }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :postal }
    it { should validate_presence_of :payment_type }
  end

  describe 'associations' do
    it { should belong_to :order }
  end

  describe 'instance methods' do
    describe '#full_address' do
      it 'returns the full address' do
        delivery = Delivery.new(street: '231 800 south', city: 'Salt Lake', state: 'Utah', postal: '84111')
        expect(delivery.full_address).to eq('231 800 south, Salt Lake, Utah, 84111')
      end
    end
  end
end

require 'rails_helper'

RSpec.describe Order, type: :model do

  describe 'validations' do
    it { should validate_presence_of :main_dish }
  end

  describe 'associations' do
    it { should have_one :delivery }
    it { should belong_to :restaurant }
  end

  describe 'instance methods' do
    describe '#total' do
      it 'returns the total sum of dish price' do
        order = Order.new(m_price: 8, d_price: 5, ds_price: 3)
        expect(order.total).to eq(16)
      end
    end
  end
end

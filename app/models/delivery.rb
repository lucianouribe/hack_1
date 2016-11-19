class Delivery < ApplicationRecord
  validates_presence_of :name, :street, :city, :state, :postal, :payment_type

  belongs_to :order

  def full_address
    [street, city, state, postal].compact.join(', ')
  end
end

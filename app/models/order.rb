class Order < ApplicationRecord
  validates_presence_of :main_dish

  belongs_to :restaurant
  has_one :delivery, dependent: :destroy

  def total
    m_price + d_price + ds_price
  end

end

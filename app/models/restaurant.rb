class Restaurant < ApplicationRecord
  validates_presence_of :name, :street, :city, :state, :postal, :latitude, :longitude

  has_one :order, dependent: :destroy

  belongs_to :user
end

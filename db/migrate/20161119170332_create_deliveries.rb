class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal
      t.string :payment_type
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end

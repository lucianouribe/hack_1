class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :main_dish, null: false
      t.string :drinks
      t.string :dessert
      t.integer :m_price
      t.integer :d_price
      t.integer :ds_price


      t.belongs_to :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

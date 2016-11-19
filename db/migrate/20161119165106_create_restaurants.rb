class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text :description
      t.string :street
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal, null: false
      t.boolean :delivery
      t.float :latitude, null: false
      t.float :longitude, null: false

      t.timestamps
    end
  end
end

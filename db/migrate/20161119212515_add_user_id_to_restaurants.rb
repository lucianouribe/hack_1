class AddUserIdToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :user_id, :integer, foreign_key: true
  end
end

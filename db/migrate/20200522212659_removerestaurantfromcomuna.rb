class Removerestaurantfromcomuna < ActiveRecord::Migration[5.2]
  def change
    remove_column :comunas, :restaurant_id, :bigint
  end
end

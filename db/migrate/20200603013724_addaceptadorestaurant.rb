class Addaceptadorestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :aceptado, :integer
  end
end

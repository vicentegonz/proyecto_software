class Usuariorestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :dueno_id, :integer
  end
end

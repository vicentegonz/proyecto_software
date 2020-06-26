class Addcolummtoresta < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :cvaloracion, :integer
  end
end

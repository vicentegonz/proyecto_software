class Addcolumnresta < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :foto, :binary
  end
end

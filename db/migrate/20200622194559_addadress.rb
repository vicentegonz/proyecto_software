class Addadress < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :latitud, :float
    add_column :restaurants, :longitud, :float
  end
end

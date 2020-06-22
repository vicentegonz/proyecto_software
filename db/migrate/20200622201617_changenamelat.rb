class Changenamelat < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :latitud, :latitude
    rename_column :restaurants, :longitud, :longitude
  end
end

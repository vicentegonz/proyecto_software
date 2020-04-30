class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :nombre
      t.float :valoracion
      t.string :comentarios
      t.string :descripcion

      t.timestamps
    end
  end
end

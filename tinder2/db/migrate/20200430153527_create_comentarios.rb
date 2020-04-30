class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.integer :rid
      t.date :fecha
      t.string :hora
      t.integer :uid
      t.string :contenido

      t.timestamps
    end
  end
end

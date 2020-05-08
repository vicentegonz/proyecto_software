class CreateComunas < ActiveRecord::Migration[5.2]
  def change
    create_table :comunas do |t|
      t.integer :cid
      t.string :nombre

      t.timestamps
    end
  end
end

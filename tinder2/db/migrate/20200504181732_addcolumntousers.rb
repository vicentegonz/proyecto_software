class Addcolumntousers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellidos, :string
  end
end

class FixUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :contacto, :string
    add_column :users, :comuna, :string
  end
end

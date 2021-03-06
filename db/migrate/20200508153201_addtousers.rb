class Addtousers < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :ususario2, :string
    remove_column :meetings, :rid, :string
    add_column :meetings, :usuario2, :string
    add_column :meetings, :rid, :integer

    add_column :users, :edad, :integer
    add_column :users, :descripcion, :string

    remove_column :restaurants, :did
    add_column :restaurants, :did, :integer
  end
end

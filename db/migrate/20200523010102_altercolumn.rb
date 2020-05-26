class Altercolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :comentar, :string
  end
end

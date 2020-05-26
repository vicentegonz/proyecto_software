class Changenamecolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :comentarios, :integer
  end
end

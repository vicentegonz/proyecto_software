class Addcolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :comuna, :integer
  end
end

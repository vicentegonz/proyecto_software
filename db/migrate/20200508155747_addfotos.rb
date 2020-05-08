class Addfotos < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :foto, :binary
  end
end

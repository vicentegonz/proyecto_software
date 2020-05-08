class FixResto < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :did, :string
    add_column :restaurants, :comuna, :string
  end
end

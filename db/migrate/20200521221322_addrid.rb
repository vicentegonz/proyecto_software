class Addrid < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :rid, :integer
  end
end

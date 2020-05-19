class ChangeDataTypeRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :cid, :integer, using: 'cid::integer'
  end
end

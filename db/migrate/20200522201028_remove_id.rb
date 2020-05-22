class RemoveId < ActiveRecord::Migration[5.2]
  def change
    remove_column :comentarios, :rid
    remove_column :comentarios, :uid
    remove_column :comunas, :cid
    remove_column :comunas, :restaurant_id
    remove_column :gustos, :uid
    remove_column :meetings, :rid
    remove_column :restaurants, :cid
    remove_column :restaurants, :uid
    remove_column :restaurants, :rid
  end
end

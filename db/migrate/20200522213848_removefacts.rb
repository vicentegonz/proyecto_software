class Removefacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :comentario_id, :bigint
    remove_column :users, :gusto_id, :bigint
    

  end
end

class ChangeNameColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :comuna_id, :bigint
  end
end

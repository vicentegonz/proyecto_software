class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :did, :uid
  end
end

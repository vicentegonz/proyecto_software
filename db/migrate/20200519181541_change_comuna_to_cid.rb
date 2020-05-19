class ChangeComunaToCid < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :comuna, :cid

  end
end

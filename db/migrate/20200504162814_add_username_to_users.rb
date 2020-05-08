class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :tipo, :string
    add_column :users, :sexo, :string
  end
end

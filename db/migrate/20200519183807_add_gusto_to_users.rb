class AddGustoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :gusto, foreign_key: true
  end
end

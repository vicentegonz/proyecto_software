class AddComunaToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :comuna, foreign_key: true
  end
end

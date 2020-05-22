class AddRestauratnToComuna < ActiveRecord::Migration[5.2]
  def change
    add_reference :comunas, :restaurant, foreign_key: true
  end
end

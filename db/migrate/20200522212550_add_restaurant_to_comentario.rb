class AddRestaurantToComentario < ActiveRecord::Migration[5.2]
  def change
    add_reference :comentarios, :restaurant, foreign_key: true
  end
end

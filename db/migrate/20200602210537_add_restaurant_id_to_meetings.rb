class AddRestaurantIdToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :restaurant_id, :integer
  end
end

class AddCheckToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :check, :integer
  end
end

class FixMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :rid, :string
  end
end

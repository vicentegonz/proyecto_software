class Addcolumntomeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :date1, :datetime
    add_column :meetings, :date2, :datetime
  end
end

class AddColumnResta < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :especialidad, :string
  end
end

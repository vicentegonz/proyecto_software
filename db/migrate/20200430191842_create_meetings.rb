class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :usuario1
      t.string :ususario2

      t.timestamps
    end
  end
end

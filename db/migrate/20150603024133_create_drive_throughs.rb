class CreateDriveThroughs < ActiveRecord::Migration
  def change
    create_table :drive_throughs do |t|
      t.integer :user_id
      t.text :food
      t.text :total_macros

      t.timestamps null: false
    end
  end
end

class CreateCalorieCounters < ActiveRecord::Migration
  def change
    create_table :calorie_counters do |t|

      t.timestamps null: false
    end
  end
end

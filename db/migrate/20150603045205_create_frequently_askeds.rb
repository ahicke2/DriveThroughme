class CreateFrequentlyAskeds < ActiveRecord::Migration
  def change
    create_table :frequently_askeds do |t|

      t.timestamps null: false
    end
  end
end

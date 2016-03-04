class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :places
      t.text :comments
      t.integer :trip_id
      t.belongs_to :trips
      t.timestamps null: false
    end
  end
end

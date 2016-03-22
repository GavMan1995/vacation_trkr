class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name, required: true
      t.string :start
      t.string :end

      t.timestamps null: false
    end
  end
end

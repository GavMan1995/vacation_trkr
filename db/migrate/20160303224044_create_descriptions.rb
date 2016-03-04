class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :description
      t.belongs_to :infos

      t.timestamps null: false
    end
  end
end

class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :food_name
      t.date :date
      t.string :data_type
      t.string :tag
      t.references :challenge, index: true, foreign_key: true
      t.references :calendar, index: true, foreign_key: true

      t.timestamps
    end
  end
end

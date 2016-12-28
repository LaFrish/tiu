class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :date
      t.string :exercises
      t.string :foods
      t.string :photos
      t.string :img_url
      t.string :data_type
      t.string :tag
      t.references :challenge, index: true

      t.timestamps
    end
  end
end

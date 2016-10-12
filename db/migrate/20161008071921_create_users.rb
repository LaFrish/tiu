class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.references :challenge, index: true, foreign_key: true
      t.references :calendar, index: true, foreign_key: true

      t.timestamps
    end
  end
end

class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :challenge_name
      t.references :users, index: true
      t.references :calendar, index: true

      t.timestamps
    end
  end
end

class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :challenge_name


      t.timestamps
    end
  end
end

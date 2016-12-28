class ChangeColumnInChallenges < ActiveRecord::Migration
  def change
    remove_column :challenges, :integer
    remove_column :challenges, :calendar_id, :integer
  end
end

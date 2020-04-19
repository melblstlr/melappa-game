class AddGameToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :game_id, :integer
  end
end
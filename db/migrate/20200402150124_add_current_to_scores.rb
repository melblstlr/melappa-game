class AddCurrentToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :current, :boolean
  end
end

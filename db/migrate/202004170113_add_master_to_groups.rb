class AddMasterToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :master, :boolean
  end
end
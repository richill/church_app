class AddUseridToLaunchministries < ActiveRecord::Migration[5.0]
  def change
    add_column :launchministries, :user_id, :integer
  end
end

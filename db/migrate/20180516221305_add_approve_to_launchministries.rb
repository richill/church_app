class AddApproveToLaunchministries < ActiveRecord::Migration[5.0]
  def change
    add_column :launchministries, :approve, :boolean
  end
end

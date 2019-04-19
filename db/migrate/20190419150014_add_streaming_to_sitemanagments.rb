class AddStreamingToSitemanagments < ActiveRecord::Migration[5.0]
  def change
    add_column :sitemanagments, :livestreaming, :string
  end
end

class AddUrlsToSitemanagments < ActiveRecord::Migration[5.0]
  def change
    add_column :sitemanagments, :eventlink_img01, :string
    add_column :sitemanagments, :eventlink_img02, :string
    add_column :sitemanagments, :eventlink_img03, :string
    add_column :sitemanagments, :videotitle, :string
  end
end

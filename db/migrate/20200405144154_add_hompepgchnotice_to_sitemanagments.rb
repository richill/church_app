class AddHompepgchnoticeToSitemanagments < ActiveRecord::Migration[5.0]
  def change
    add_column :sitemanagments, :homepg_notice, :text
  end
end

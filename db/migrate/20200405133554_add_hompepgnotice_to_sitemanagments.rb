class AddHompepgnoticeToSitemanagments < ActiveRecord::Migration[6.0]
  def change
    add_column :sitemanagments, :homepg_churchnotice, :text
  end
end

class CreateSitemanagments < ActiveRecord::Migration[5.0]
  def change
    create_table :sitemanagments do |t|
      t.string :homepg_img01
      t.string :homepg_img02
      t.string :homepg_img03
      t.string :homepg_video

      t.timestamps
    end
  end
end

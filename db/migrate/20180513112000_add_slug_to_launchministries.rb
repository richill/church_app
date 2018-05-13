class AddSlugToLaunchministries < ActiveRecord::Migration[5.0]
  def change
    add_column :launchministries, :slug, :string
    add_index :launchministries, :slug, unique: true
  end
end

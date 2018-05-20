class AddSlugToSmallgroups < ActiveRecord::Migration[5.0]
  def change
    add_column :smallgroups, :slug, :string
    add_index :smallgroups, :slug, unique: true
  end
end

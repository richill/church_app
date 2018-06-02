class AddSlugToPracticalneeds < ActiveRecord::Migration[5.0]
  def change
    add_column :practicalneeds, :slug, :string
    add_index :practicalneeds, :slug, unique: true
  end
end

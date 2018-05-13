class AddSlugToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :slug, :string
    add_index :photos, :slug, unique: true
  end
end

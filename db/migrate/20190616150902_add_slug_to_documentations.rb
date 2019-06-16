class AddSlugToDocumentations < ActiveRecord::Migration[5.0]
  def change
    add_column :documentations, :slug, :string
    add_index :documentations, :slug, unique: true
  end
end

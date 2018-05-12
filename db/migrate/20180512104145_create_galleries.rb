class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :name
      t.date :date
      t.text :description
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end

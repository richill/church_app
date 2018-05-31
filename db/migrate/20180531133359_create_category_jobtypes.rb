class CreateCategoryJobtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :category_jobtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end

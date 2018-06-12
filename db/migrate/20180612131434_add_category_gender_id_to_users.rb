class AddCategoryGenderIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :category_gender_id, :integer
  end
end

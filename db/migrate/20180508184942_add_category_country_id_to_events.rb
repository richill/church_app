class AddCategoryCountryIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :category_country_id, :integer
  end
end

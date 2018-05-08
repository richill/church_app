class AddCountryToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :countryevent, :string
  end
end

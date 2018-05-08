class RemoveCountryeventsFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :countryevent, :string
  end
end

class RemoveCountryFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :country, :string
  end
end

class AddEventdetailsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :description, :text
    add_column :events, :address, :text
    add_column :events, :city, :string
    add_column :events, :country, :string
    add_column :events, :postcode, :string
    add_column :events, :link, :string
    add_column :events, :image, :string
  end
end

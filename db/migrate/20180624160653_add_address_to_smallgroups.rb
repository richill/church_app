class AddAddressToSmallgroups < ActiveRecord::Migration[5.0]
  def change
    add_column :smallgroups, :address, :string
    add_column :smallgroups, :postcode, :string
  end
end

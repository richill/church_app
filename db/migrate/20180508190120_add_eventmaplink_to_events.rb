class AddEventmaplinkToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :linkmap, :string
  end
end

class AddCategoryEventIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :category_event_id, :integer
  end
end

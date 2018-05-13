class AddDescriptionToDiscussions < ActiveRecord::Migration[5.0]
  def change
    add_column :discussions, :description, :text
  end
end

class AddImageToDiscussions < ActiveRecord::Migration[5.0]
  def change
    add_column :discussions, :image, :string
  end
end

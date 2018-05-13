class AddDiscussionidToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :discussion_id, :integer
    add_column :comments, :content, :text
  end
end

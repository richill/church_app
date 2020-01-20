class AddUrllinkToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :linkurl, :string
  end
end

class AddApproveToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :approve, :boolean
  end
end

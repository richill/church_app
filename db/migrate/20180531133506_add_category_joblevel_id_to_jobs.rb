class AddCategoryJoblevelIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :category_joblevel_id, :integer
  end
end

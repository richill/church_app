class AddCategoryJobtypeIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :category_jobtype_id, :integer
  end
end

class AddCategoryJobIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :category_job_id, :integer
  end
end

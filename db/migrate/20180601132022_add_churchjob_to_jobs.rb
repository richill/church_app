class AddChurchjobToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :churchjob, :boolean
  end
end

class CreatePracticalneeds < ActiveRecord::Migration[5.0]
  def change
    create_table :practicalneeds do |t|
      t.string :title
      t.string :location
      t.text :description
      t.boolean :close
      t.boolean :approve
      t.integer :user_id
      t.integer :category_job_id
      t.integer :category_jobtype_id

      t.timestamps
    end
  end
end

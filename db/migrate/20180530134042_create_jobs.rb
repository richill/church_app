class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.text :description
      t.boolean :close
      t.boolean :approve

      t.timestamps
    end
  end
end

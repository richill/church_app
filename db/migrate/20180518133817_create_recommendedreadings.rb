class CreateRecommendedreadings < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendedreadings do |t|
      t.string :fileattachment

      t.timestamps
    end
  end
end

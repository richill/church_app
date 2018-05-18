class AddFilenameToRecommendedreadings < ActiveRecord::Migration[5.0]
  def change
    add_column :recommendedreadings, :filename, :string
  end
end

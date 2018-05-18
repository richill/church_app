class AddNotesToRecommendedreadings < ActiveRecord::Migration[5.0]
  def change
    add_column :recommendedreadings, :notes, :text
  end
end

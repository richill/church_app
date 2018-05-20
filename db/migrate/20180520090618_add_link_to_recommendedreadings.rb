class AddLinkToRecommendedreadings < ActiveRecord::Migration[5.0]
  def change
    add_column :recommendedreadings, :link, :string
  end
end

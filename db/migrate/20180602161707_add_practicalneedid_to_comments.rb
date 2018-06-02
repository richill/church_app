class AddPracticalneedidToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :practicalneed_id, :integer
  end
end

class CreateSmallgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :smallgroups do |t|
      t.string :name
      t.text :descriptin
      t.string :image

      t.timestamps
    end
  end
end

class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.references :attendable, polymorphic: true, index: true
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
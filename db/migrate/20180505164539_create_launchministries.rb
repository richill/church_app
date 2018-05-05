class CreateLaunchministries < ActiveRecord::Migration[5.0]
  def change
    create_table :launchministries do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :mobile
      t.string :homenumber
      t.string :worknumber
      t.string :address
      t.string :city
      t.string :postcode
      t.text :mininstryidea
      t.text :mininstrydescription
      t.text :ministryneed
      t.text :ministrymission

      t.timestamps
    end
  end
end

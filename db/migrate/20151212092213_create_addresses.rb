class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name 
      t.string :street
      t.string :zip
      t.string :city
      t.references :addressable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end

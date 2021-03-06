class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :type
      t.references :informable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end

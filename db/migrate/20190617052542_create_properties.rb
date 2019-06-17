class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :listing_type
      t.integer :bedroom
      t.integer :bathroom
      t.string :address
      t.string :city
      t.integer :size
      t.string :size_unit
      t.string :construction_age
      t.text :description
      t.integer :owner_id
      t.integer :area_id
      t.date :pub_date
      t.boolean :published
      t.integer :published_by

      t.timestamps
    end
  end
end

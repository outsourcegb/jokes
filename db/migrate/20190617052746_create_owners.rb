class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :full_name
      t.string :contact_no
      t.string :alternate_no
      t.string :address

      t.timestamps
    end
  end
end

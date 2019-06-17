class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :jokes do |t|
      t.text :content
      t.integer :user_id
      t.boolean :active
      t.date :pub_date

      t.timestamps
    end
  end
end

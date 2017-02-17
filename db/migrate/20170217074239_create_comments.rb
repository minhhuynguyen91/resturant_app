class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :content
      t.integer :rate
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.text :description
      t.float :price
      t.integer :quantity
      t.string :location
      t.references :condition, foreign_key: true
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end

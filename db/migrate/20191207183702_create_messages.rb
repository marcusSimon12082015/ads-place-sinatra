class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text
      t.string :sender_name
      t.string :telephone_number
      t.string :email
      t.references :ad, foreign_key: true
    end 
  end
end

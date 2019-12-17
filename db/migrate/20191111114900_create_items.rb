class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.references :user, null: false ,foreign_key: true
      t.string :name, null: false
      t.string :video 
      t.string :image
      t.integer :price, null: false
      t.integer :bugdet, null: false
      t.text :color, null: false
      t.datetime :on_air, default: -> { 'NOW()' },null: false
      t.text :discription
      t.integer :category, null: false
      t.timestamps
      
    end
  end
end

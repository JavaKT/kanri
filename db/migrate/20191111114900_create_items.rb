class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :image, null:false
      t.string  :name, null: false
      t.integer :price 
      t.integer :bugdet
      t.text :color
      t.datetime :on_air, default: -> { 'NOW()' }
      t.text :comment
      t.string :video
      t.references :user, null: false ,foreign_key: true
      t.references :genre, null:false ,foreign_key: true
      t.timestamps 
      
    end
  end
end

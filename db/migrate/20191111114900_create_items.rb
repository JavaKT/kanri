class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :image, null:false
      t.string  :name, null: false
      t.integer :price, null: false
      t.integer :bugdet, null: false
      t.text :color, null: false
      t.datetime :on_air, default: -> { 'NOW()' }
      t.text :comment
      t.references :user, null: false ,foreign_key: true
      t.timestamps
      
    end
  end
end

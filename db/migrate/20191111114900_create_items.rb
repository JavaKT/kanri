class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string  :name, null: false
      t.integer :price 
      t.integer :bugdet
      t.text :color
      t.datetime :on_air, default: -> { 'NOW()' }
      t.text :comment
      t.references :user, null: false ,foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
      
    end
  end
end

class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string  :name
      t.integer :price
      t.integer :bugdet
      t.references :user, null: false ,foreign_key: true
      t.timestamps
      
    end
  end
end

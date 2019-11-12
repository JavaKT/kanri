class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string  :name
      t.integer :price
      t.integer :bugdet
      t.text    :comment
      t.string  :color
      t.date    :on_air
      t.timestamps
      
    end
  end
end

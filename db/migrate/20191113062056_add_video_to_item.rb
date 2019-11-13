class AddVideoToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :video, :string
  end
end

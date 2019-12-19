class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :image, :string
    add_column :users, :department, :integer
    add_column :users, :introduction, :text
    add_column :users, :contact, :string
    add_column :users, :post, :string
    add_column :users, :number, :integer
  end
end

class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :image, :string
    add_column :users, :department, :string
    add_column :users, :introduction, :string
    add_column :users, :contact, :string
  end
end

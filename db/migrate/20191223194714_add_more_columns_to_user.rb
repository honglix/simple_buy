class AddMoreColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :birthday, :string
    add_column :users, :gender, :string
    add_column :users, :is_admin, :boolean, default: false

  end
end

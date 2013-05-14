class AddNewToOrderforms < ActiveRecord::Migration
  def change
    add_column :orderforms, :hotel_name, :string
    remove_column :orderforms,:hotel,:string
  end
end

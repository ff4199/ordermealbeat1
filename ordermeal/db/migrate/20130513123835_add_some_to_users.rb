class AddSomeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
  end
end

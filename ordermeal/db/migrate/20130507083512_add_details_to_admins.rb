class AddDetailsToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :password, :string
    add_column :admins, :username, :string
    add_column :admins, :last_login_time, :string
    add_column :admins, :login_count, :integer
    
  end
end

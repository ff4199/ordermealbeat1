class AddSexToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :sex, :string
  end
end

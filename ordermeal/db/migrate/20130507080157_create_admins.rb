class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.integer :tel
      t.string :email

      t.timestamps
    end
  end
end

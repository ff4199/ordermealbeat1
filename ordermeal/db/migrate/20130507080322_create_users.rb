class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :tel
      t.integer :level
      t.string :room

      t.timestamps
    end
  end
end

class CreateOrderforms < ActiveRecord::Migration
  def change
    create_table :orderforms do |t|
      t.string :hotel
      t.string :taste
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end

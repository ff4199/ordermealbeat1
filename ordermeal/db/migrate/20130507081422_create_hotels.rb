class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :taste
      t.integer :price

      t.timestamps
    end
  end
end

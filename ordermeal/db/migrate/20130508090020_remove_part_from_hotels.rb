class RemovePartFromHotels < ActiveRecord::Migration
  def up
    remove_column :hotels, :price
    remove_column :hotels, :taste
  end

  def down
    add_column :hotels, :taste, :string
    add_column :hotels, :price, :integer
  end
end

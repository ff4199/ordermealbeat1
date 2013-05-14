class AddNameToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :name, :string
  end
end

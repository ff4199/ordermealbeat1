class AddNewsToOrderforms < ActiveRecord::Migration
  def change
    add_column :orderforms, :hotel_id, :integer
  end
end

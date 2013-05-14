class AddNewToOrderform < ActiveRecord::Migration
  def change
    add_column :orderforms, :user_id, :integer
  end
end

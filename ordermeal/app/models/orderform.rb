class Orderform < ActiveRecord::Base
  attr_accessible :hotel_name, :price, :quantity, :taste,:user_id,:hotel_id
  belongs_to(:user,:class_name=>"User",:foreign_key=>"user_id")
  belongs_to(:hotel,:class_name=>"Hotel",:foreign_key=>"hotel_id")

end

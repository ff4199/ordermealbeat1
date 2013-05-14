class Hotel < ActiveRecord::Base
  attr_accessible :name
  has_many(:orderforms,:class_name=>"Orderform",:foreign_key=>"hotel_id")
end

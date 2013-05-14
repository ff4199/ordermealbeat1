class User < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name,:password, :level,:point,:email, :room, :tel
  has_many(:orderforms,:class_name=>"Orderform",:foreign_key=>"user_id")
end

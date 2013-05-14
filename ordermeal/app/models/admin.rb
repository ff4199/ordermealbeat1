class Admin < ActiveRecord::Base
  attr_accessible :email, :name,:username,:password,:tel,:last_login_time ,:login_count,
                  :sex
end

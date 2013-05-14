# encoding: utf-8

class HomeController < ApplicationController
  #:partial=>"index"局部模板
  def index
     render "home/index" ,:layout=>"index"
  end
  
  # 验证用户登录
  def login
    #管理员登录
    if params[:login_name]=="admin"
  	   name=params[:name]
  	   password=params[:password]
  	   admin=Admin.find_by_name_and_password(name,password)
  	   session[:admin_id]=nil
  	
  	   if admin
  		    session[:admin_id]=admin.id
  		    redirect_to "/admins",:notice=>"恭喜#{admin.name}登录成功"
  	   else
  		    redirect_to "/home/failed"
  	   end
    end
    #用户登录
    if params[:login_name]=="user"
       name=params[:name]
       password=params[:password]
       user=User.find_by_name_and_password(name,password)
       session[:user_id]=nil
    
       if user
          session[:user_id]=user.id
          redirect_to "/users/#{user.id}",:notice=>"恭喜#{user.name}登录成功"
       else
          redirect_to "/home/failed"
       end
    end
  # 用户登录失败
  def failed
  	redirect_to "/",:notice=>"用户名或密码错误，登录失败"
  end
end
end

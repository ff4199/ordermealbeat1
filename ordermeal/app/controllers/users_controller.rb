# encoding: utf-8

class UsersController < ApplicationController
  #定义过滤器，设置session，防止url入侵
  before_filter :safecheck,:except=>:new
  def safecheck
   if !session[:user_id].nil? then
     @currentUserName=session[:user_id]
     return true
   end
   else
    redirect_to "users",:notice=>"对不起，您还没有登录"
     return false
  end
  # GET /users
  # GET /users.json
  def index
    @users = User.find(:all, :order=>"id")

    respond_to do |format|
      format.html  {render :layout=>"admin_list"}# index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html  {render :layout=>"user_list"}# show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html {render :layout=>"admin_list"}# new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    render :layout=>"admin_list"
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: '恭喜您注册成功',:layout=>"admin_list" }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" ,:layout=>"admin_list"}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, :layout=>"admin_list"}
        format.json { head :no_content }
      else
        format.html { render action: "edit" ,:layout=>"admin_list"}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url  {render :layout=>"admin_list"}}
      format.json { head :no_content }
    end
  end
end

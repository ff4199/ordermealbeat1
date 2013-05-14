# encoding: utf-8

class OrderformsController < ApplicationController
  # GET /orderforms
  # GET /orderforms.json
  def index
    @orderforms = Orderform.all
   
    respond_to do |format|
      format.html {render:layout=>"admin_list"}# index.html.erb
      format.json { render json: @orderforms }
    end
  end

  # GET /orderforms/1
  # GET /orderforms/1.json
  def show
    @orderform = Orderform.find(params[:id])

    respond_to do |format|
      format.html {render:layout=>"admin_list"}# show.html.erb
      format.json { render json: @orderform }
    end
  end

  # GET /orderforms/new
  # GET /orderforms/new.json
  def new
    @orderform = Orderform.new

    respond_to do |format|
      format.html {render:layout=>"admin_list"}# new.html.erb
      format.json { render json: @orderform }
    end
  end

  # GET /orderforms/1/edit
  def edit
    @orderform = Orderform.find(params[:id])
    render :layout=>"admin_list"
  end

  # POST /orderforms
  # POST /orderforms.json
  def create
    @orderform = Orderform.new(params[:orderform])

    respond_to do |format|
      if @orderform.save
        format.html { redirect_to @orderform, notice: '订单创建成功',:layout=>"admin_list" }
        format.json { render json: @orderform, status: :created, location: @orderform }
      else
        format.html { render action: "new", notice: '订单更新成功',:layout=>"admin_list" }
        format.json { render json: @orderform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orderforms/1
  # PUT /orderforms/1.json
  def update
    @orderform = Orderform.find(params[:id])

    respond_to do |format|
      if @orderform.update_attributes(params[:orderform])
        format.html { redirect_to @orderform, notice: '订单更新成功',:layout=>"admin_list" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderforms/1
  # DELETE /orderforms/1.json
  def destroy
    @orderform = Orderform.find(params[:id])
    @orderform.destroy

    respond_to do |format|
      format.html { redirect_to orderforms_url ,:layout=>"admin_list"}
      format.json { head :no_content }
    end
  end
  


end

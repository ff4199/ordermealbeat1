# encoding: utf-8

class HotelsController < ApplicationController
  # GET /hotels
  # GET /hotels.json
  def index
    @hotels = Hotel.all

    respond_to do |format|
      format.html  {render :layout=>"admin_list"}# index.html.erb
      format.json { render json: @hotels }
    end
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      format.html  {render :layout=>"admin_list"}# show.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/new
  # GET /hotels/new.json
  def new
    @hotel = Hotel.new

    respond_to do |format|
      format.html  {render :layout=>"admin_list"}# new.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/1/edit
  def edit
    @hotel = Hotel.find(params[:id])
    render :layout=>"admin_list"
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(params[:hotel])

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to @hotel, notice: '饭店创建成功',:layout=>"admin_list" }
        format.json { render json: @hotel, status: :created, location: @hotel }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotels/1
  # PUT /hotels/1.json
  def update
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      if @hotel.update_attributes(params[:hotel])
        format.html { redirect_to @hotel, notice: '饭店更新成功' ,:layout=>"admin_list"}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to hotels_url ,:layout=>"admin_list"}
      format.json { head :no_content }
    end
  end
  
    #将餐厅名称与id对应，以便与利用外键%
 # def MathIdToName
  #  if(:hotel_name=="竹园餐厅")
   #   :hotel_id=1
    #end
    
    #if(:hotel_name=="海棠餐厅")
  #    :hotel_id=2
   # end
   # if(:hotel_name=="丁香餐厅")
    #  :hotel_id=3
   # end   
 # end
end

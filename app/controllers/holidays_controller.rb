class HolidaysController < ApplicationController
  def new
    @holiday = Holiday.new
  end
  
  def create
    @user = current_user
    @holiday = Holiday.new(params[:holiday]) 
    
    if @holiday.save
   
      flash[:success] = "Your Holiday has been added. You will not recieve notifications on this day."
      redirect_to @user
    else
      render 'new'
    end 
  end
  
  def edit
    @holiday = Holiday.find(params[:id])
  end
  
  def update
    @holiday = Holiday.find(params[:id])
    if @holiday.update_attributes(params[:event])
      flash[:success] = "Event Updated!"
      redirect_to @holiday
    else
      render 'edit'
    end
  end
  
  def show
      @holiday = Holiday.find(params[:id])
  end
  
  def index
    
  end
  
  def destroy
    Holiday.find(params[:id]).destroy
    flash[:success] = "Holiday destroyed."
    redirect_to users_url
  end
end

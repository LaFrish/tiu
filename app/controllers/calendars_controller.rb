 class CalendarsController < ApplicationController

   def index

    #  @user = User.find(params[:user_id])
     @calendars = Calendar.all

   end

   def new
     @user = User.find(params[:user_id])
     @calendar = Calendar.new
   end

   def create
     @user = User.find(params[:user_id])
     @calendar = @user.calendars.create!(calendar_params)

     redirect_to user_path(@user)
   end

   def show
     @user = User.find(params[:user_id])
     @calendar = Calendar.find(params[:id])
   end

   def edit
     @user = User.find(params[:user_id])
     @calendar = Calendar.find(params[:id])
   end

   def update
     @user = User.find(params[:user_id])
     @calendar = Calendar.find(params[:id])
     @calendar.update(calendar_params.merge([:id]))

     redirect_to user_path(@user)
   end

   def destroy
     @calendar = Calendar.find(params[:id])
     @calendar.destroy
     redirect_to user_path(@user)
   end

   private
   def calendar_params
     params.require(:calendar).permit(:date, :exercises, :foods, :photos, :img_url, :data_type, :tag, :user_id, :challenge_id, :created_at, :updated_at, :user_id, :calendar_id)
   end
 end

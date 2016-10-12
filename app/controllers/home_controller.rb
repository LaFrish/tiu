 class HomeController < ApplicationController

   def index
    @users = User.all
    @challenges = Challenge.all
   end



 end

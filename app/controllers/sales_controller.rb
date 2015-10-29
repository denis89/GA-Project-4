class SalesController < ApplicationController
     def index
    end
    
    def computer
    @computers = Ad.all
    @recipe_image = Ad.all
    render :computer
   end

    def clothes
    @clotheses = Ad.all
    render :clothes
   end

   def furniture
    @furnitures = Ad.all
    render :furniture
   end

   def vehicle
    @vehicles = Ad.all
    render :vehicle
   end

   def recipe_image
   end

end

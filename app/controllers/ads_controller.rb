class AdsController < ApplicationController
   def show
    @ads = Ads.find(params[:id])
    # Find a specific article
  end

  def new 
  end

  def create 
   #create action to use the new Article model to save the data in the database.
   @ads = Ads.new(ads_params)
   @ads.save
  redirect_to @ads
  end

  private
  def ads_params
    params.require(:ads).permit(:title, :text)
  end
  



end

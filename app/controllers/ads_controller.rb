class AdsController < ApplicationController
   
   def index
     @ads = Ad.all
   end

   def show
    @ad = Ad.find(params[:id])
    # Find a specific article
  end

  def new 
    @ads = Ad.new
  end

   def edit
    @ad = Ad.find(params[:id])
  end

  def create 
   #create action to use the new Article model to save the data in the database.
   @ads = Ad.new(ads_params)
   if @ads.save
  redirect_to @ads
   else 
    render 'new'
   end
  end


  def update
  @ad = Article.find(params[:id])
 
  if @ad.update(article_params)
    redirect_to @ad
  else
    render 'edit'
  end
  end

   def destroy
    @ads = Ad.find(params[:id])
    @ads.destroy
 
    redirect_to adss_path
  end

  private
  def ads_params
    params.require(:ad).permit(:title, :text)
  end
  

end

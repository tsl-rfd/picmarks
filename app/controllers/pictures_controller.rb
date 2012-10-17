class PicturesController < ApplicationController
  
  # Support /pictures
  # Show a list of pictures
  # by creating an array in your controller
  # and creating a view template that uses the array
  # to generate a list of images.
  
  def index
    @photo_urls = ["http://static.nfl.com/static/content/public/photo/2012/10/16/0ap1000000081197.jpg", "http://static.nfl.com/static/content/public/photo/2012/10/14/0ap1000000080282.jpg", "http://www.trbimg.com/img-507d9f92/turbine/chi-transcript-nhls-bettman-on-latest-proposal-20121016/187/16x9"]
    
    render 'index'
  end
  
  
  def show
    @photo_urls = ["http://static.nfl.com/static/content/public/photo/2012/10/16/0ap1000000081197.jpg", "http://static.nfl.com/static/content/public/photo/2012/10/14/0ap1000000080282.jpg", "http://www.trbimg.com/img-507d9f92/turbine/chi-transcript-nhls-bettman-on-latest-proposal-20121016/187/16x9"]
    
    # params = {"id"=>"1"}
    
    id_number = params[:id].to_i
    
    @url = @photo_urls[id_number - 1]
  end
  
  
  
  
  
  
  
  
  
  
  
end
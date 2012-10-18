class PicturesController < ApplicationController
  def new
  end
  
  def index
    if params[:url]  
      p = Picture.new
      p.url = params[:url]
      p.save
    end
    @pictures = Picture.all
    
  end
  
  def show
    # This was our old code from when we had hardcoded data.
    # id_number = params[:id].to_i
    # @url = @photo_urls[id_number - 1]
    
    # Use the Picture.find_by_id method to make the show action work.
    # You may also have to update the view template.
    
    @pic # = ???
  end
end
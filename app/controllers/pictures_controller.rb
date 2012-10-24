class PicturesController < ApplicationController
  def edit
    @picture = Picture.find_by_id(params[:id])
  end
  
  def update
    p = Picture.find_by_id(params[:id])
    p.url = params[:url]
    p.note = params[:note]
    p.save
    
    redirect_to "/pictures/#{p.id}"
  end
  
  def new
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.note = params[:note]
    p.save
    
    redirect_to "/pictures"
  end
  
  def destroy
    p = Picture.find_by_id(params[:id])
    p.destroy
    
    redirect_to "/pictures"
  end
  
  def index
    @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find_by_id(params[:id])
  end
end
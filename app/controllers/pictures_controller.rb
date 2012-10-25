class PicturesController < ApplicationController
  def edit
    @picture = Picture.find_by_id(params[:id])
  end
  
  def update
    @picture = Picture.find_by_id(params[:id])
    @picture.url = params[:url]
    @picture.note = params[:note]
    if @picture.save
      redirect_to picture_url(@picture)
    else
      render 'edit'
    end
  end
  
  
  def index
    @pictures = Picture.all
    
    respond_to do |format|
      format.html 
      format.json do
        render :json => @pictures
      end
    end
    
  end
  
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new
    @picture.url = params[:url]
    @picture.note = params[:note]
    if @picture.save
      redirect_to new_picture_url
    else
      render 'new'
    end
  end
  
  def destroy
    p = Picture.find_by_id(params[:id])
    p.destroy
    
    redirect_to pictures_url
  end
  def show
    @picture = Picture.find_by_id(params[:id])
  end
end
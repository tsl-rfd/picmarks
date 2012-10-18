class PicturesController < ApplicationController
  def index
    @photo_urls = [
      "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png",
      "http://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png",
      "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png",
      "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
      "http://upload.wikimedia.org/wikipedia/en/9/9e/JQuery_logo.svg",
      "http://upload.wikimedia.org/wikipedia/en/1/1c/CoffeeScript-logo.png",
      "http://upload.wikimedia.org/wikipedia/commons/3/3b/Haml_1-5_logo.png"
      ]
    
    render 'index'
  end
  
  def show
    @photo_urls = [
      "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png",
      "http://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png",
      "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png",
      "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
      "http://upload.wikimedia.org/wikipedia/en/9/9e/JQuery_logo.svg",
      "http://upload.wikimedia.org/wikipedia/en/1/1c/CoffeeScript-logo.png",
      "http://upload.wikimedia.org/wikipedia/commons/3/3b/Haml_1-5_logo.png"
      ]
    
    id_number = params[:id].to_i
    
    @url = @photo_urls[id_number - 1]
  end
end
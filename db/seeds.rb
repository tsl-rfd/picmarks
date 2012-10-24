# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.destroy_all

pictures = [
  {
    :url => "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png",
    :note => "Ruby"
  },
  { :url => "http://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png",
    :note => "Rails"
  },
  { :url => "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png",
    :note => "HTML5"
  },
  { :url => "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
    :note => "JavaScript"
  },
  { :url => "http://upload.wikimedia.org/wikipedia/en/9/9e/JQuery_logo.svg",
    :note => "JQuery"
  },
  { :url => "http://upload.wikimedia.org/wikipedia/en/1/1c/CoffeeScript-logo.png",
    :note => "CoffeeScript"
  },
  { :url => "http://upload.wikimedia.org/wikipedia/commons/3/3b/Haml_1-5_logo.png",
    :note => "Haml"
  }
]

pictures.each do |picture|
  p = Picture.new
  p.url = picture[:url]
  p.note = picture[:note]
  p.save
end
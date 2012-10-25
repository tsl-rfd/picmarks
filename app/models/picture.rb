class Picture < ActiveRecord::Base
  attr_accessible :note, :url
  
  validates_presence_of :url
    
end

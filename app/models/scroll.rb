class Scroll < ActiveRecord::Base
  attr_accessible :title
  
  has_many :stitches
  has_many :scribblings, :through => :stitches
end

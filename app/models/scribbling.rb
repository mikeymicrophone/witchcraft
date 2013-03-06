class Scribbling < ActiveRecord::Base
  attr_accessible :body, :witch_id

  has_many :stitches
  has_many :scrolls, :through => :stitches
end

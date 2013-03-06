class Stitch < ActiveRecord::Base
  attr_accessible :scribbling_id, :scroll_id
  
  validates_presence_of :scribbling_id, :scroll_id
  
  belongs_to :scroll
  belongs_to :scribbling
end

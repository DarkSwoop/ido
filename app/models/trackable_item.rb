class TrackableItem < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  
  attr_accessor :parent_id, :parent
  
end

class TrackableItem < ActiveRecord::Base
  acts_as_tree
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
end

class TrackableItem < ActiveRecord::Base
  acts_as_tree
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  named_scope :root_elements, :conditions => {:parent_id => nil}
end

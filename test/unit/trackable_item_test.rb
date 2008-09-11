require File.dirname(__FILE__) + '/../test_helper'

class TrackableItemTest < ActiveSupport::TestCase
  should_require_attributes :name
end

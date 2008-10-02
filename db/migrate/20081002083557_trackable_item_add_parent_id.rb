class TrackableItemAddParentId < ActiveRecord::Migration
  def self.up
    add_column :trackable_items, :parent_id, :integer
  end

  def self.down
    remove_column :trackable_items, :parent_id
  end
end

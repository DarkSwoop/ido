class CreateTrackableItems < ActiveRecord::Migration
  def self.up
    create_table :trackable_items do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :trackable_items
  end
end

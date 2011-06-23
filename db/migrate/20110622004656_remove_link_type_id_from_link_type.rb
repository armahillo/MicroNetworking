class RemoveLinkTypeIdFromLinkType < ActiveRecord::Migration
  def self.up
    remove_column :link_types, :link_type_id
  end

  def self.down
    add_column :link_types, :link_type_id, :integer
  end
end

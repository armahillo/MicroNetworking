class AddLinkTypeToLinks < ActiveRecord::Migration
  def self.up
    add_column :links, :link_type_id, :integer
  end

  def self.down
    remove_column :links, :link_type_id
  end
end

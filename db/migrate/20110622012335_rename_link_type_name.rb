class RenameLinkTypeName < ActiveRecord::Migration
  def self.up
    rename_column :link_types, :link_type, :name
  end

  def self.down
    rename_column :link_types, :name, :link_type
  end
end

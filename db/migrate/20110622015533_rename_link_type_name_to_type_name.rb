class RenameLinkTypeNameToTypeName < ActiveRecord::Migration
  def self.up
    rename_column :link_types, :name, :type_name
  end

  def self.down
    rename_column :link_types, :type_name, :name
  end
end

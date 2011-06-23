class CreateLinkTypes < ActiveRecord::Migration
  def self.up
    create_table :link_types do |t|
      t.integer :link_type_id
      t.string :link_type

      t.timestamps
    end
  end

  def self.down
    drop_table :link_types
  end
end

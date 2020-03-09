class AddToGigs < ActiveRecord::Migration
  def self.up
    add_column :gigs, :name, :string
    add_column :gigs, :description, :string
    add_column :gigs, :parent_id, :integer
  end

  def self.down
    remove_column :gigs, :name
    remove_column :gigs, :description
    remove_column :gigs, :parent_id
  end
end

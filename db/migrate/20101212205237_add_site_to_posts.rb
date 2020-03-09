class AddSiteToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :site, :url
  end

  def self.down
    remove_column :posts, :site
  end
end

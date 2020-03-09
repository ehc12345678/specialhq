class CreateGigs < ActiveRecord::Migration
  def self.up
    create_table :gigs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :gigs
  end
end

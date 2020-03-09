class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

      Role.new(:name => 'admin', :description => 'Administrator role').save
      Role.new(:name => 'author', :description => 'An author can write and edit articles').save
      Role.new(:name => 'reviewer', :description => 'A reviewer can approve and reject articles').save
      Role.new(:name => 'registered', :description => 'A registered user of the site').save
      Role.new(:name => 'parent', :description => 'A parent, guardian, or caregiver for a special needs person').save
      Role.new(:name => 'provider', :description => 'A provider of services for people with special needs').save
    end

  def self.down
    drop_table :roles
  end
end

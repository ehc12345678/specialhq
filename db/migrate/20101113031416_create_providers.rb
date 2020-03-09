class CreateProviders < ActiveRecord::Migration
  def self.up
    create_table :providers do |t|
      t.string :name
      t.string :gender
      t.string :zip
      t.string :occupation

      t.timestamps
    end
  end

  def self.down
    drop_table :providers
  end
end

class CreateParents < ActiveRecord::Migration
  def self.up
    drop_table :parents if table_exists? :parents
    create_table :parents do |t|
      t.string :name
      t.string :gender
      t.string :zip
      t.string :how_use

      t.timestamps
    end
  end

  def self.down
    drop_table :parents
  end
end

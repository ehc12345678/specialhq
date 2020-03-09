class CreateDependents < ActiveRecord::Migration
  def self.up
    drop_table :dependents if table_exists? :dependents
    create_table :dependents do |t|
      t.string :name
      t.string :gender
      t.integer :birth_month
      t.integer :birth_day
      t.integer :age
      t.string :need
      t.string :diagnosed
      t.string :zip
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dependents
  end
end

class CreateOfflearns < ActiveRecord::Migration
  def self.up
    create_table :offlearns do |t|
      t.string :name
      t.text :contents

      t.timestamps
    end
  end

  def self.down
    drop_table :offlearns
  end
end

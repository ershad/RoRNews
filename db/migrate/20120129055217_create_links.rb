class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.text :url
      t.string :title
      t.integer :vote, :default => 1
      t.float :rank, :default  => 1
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end

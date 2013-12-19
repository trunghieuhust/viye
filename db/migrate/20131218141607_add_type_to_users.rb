class AddTypeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :int, :default => 0
  end

  def self.down
    remove_column :users, :type
  end
end

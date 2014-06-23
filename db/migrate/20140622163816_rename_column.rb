class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :instruments, :type , :name
  end

  def self.down
    # rename back if you need
  end
end

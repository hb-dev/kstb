class RenameTypeInEntries < ActiveRecord::Migration
  def up
    rename_column :entries, :type, :entry_type
  end

  def down
  end
end

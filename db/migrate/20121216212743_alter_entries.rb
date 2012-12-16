class AlterEntries < ActiveRecord::Migration
  def up
    rename_column :entries, :pit, :start_pit
    add_column :entries,  :end_pit, :datetime, :after => :start_pit
  end

  def down
  end
end

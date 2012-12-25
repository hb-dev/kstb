class AddEntryIdToIntakes < ActiveRecord::Migration
  def change
    add_column :intakes, :entry_id, :integer
  end
end

class RemoveMultiplesFromEntries < ActiveRecord::Migration
  def up
    remove_column :entries, :location
    remove_column :entries, :trigger
    remove_column :entries, :medication
    remove_column :entries, :medication_effect
    remove_column :entries, :medication_amount
  end

  def down
  end
end

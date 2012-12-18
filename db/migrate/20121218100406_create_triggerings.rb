class CreateTriggerings < ActiveRecord::Migration
  def change
    create_table :triggerings do |t|
      t.integer :entry_id
      t.integer :trigger_id

      t.timestamps
    end
  end
end

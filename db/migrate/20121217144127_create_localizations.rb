class CreateLocalizations < ActiveRecord::Migration
  def change
    create_table :localizations do |t|
      t.integer :entry_id
      t.integer :location_id

      t.timestamps
    end
  end
end

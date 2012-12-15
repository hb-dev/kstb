class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.datetime :pit
      t.decimal :duration, :precision => 2, :scale => 1
      t.string :type
      t.string :location
      t.string :intensity
      t.string :trigger
      t.integer :nausea
      t.string :medication
      t.integer :medication_amount
      t.string :medication_effect
      t.text :comments

      t.timestamps
    end
  end
end

class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.integer :medication_id
      t.decimal :amount, :precision => 3, :scale => 1
      t.string :effect

      t.timestamps
    end
  end
end

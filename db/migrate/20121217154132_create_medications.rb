class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :title

      t.timestamps
    end
  end
end

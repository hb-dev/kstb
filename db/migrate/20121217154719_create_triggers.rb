class CreateTriggers < ActiveRecord::Migration
  def change
    create_table :triggers do |t|
      t.string :title

      t.timestamps
    end
  end
end

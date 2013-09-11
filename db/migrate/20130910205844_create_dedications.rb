class CreateDedications < ActiveRecord::Migration
  def change
    create_table :dedications do |t|
      t.string :words
      t.references :book

      t.timestamps
    end
  end
end

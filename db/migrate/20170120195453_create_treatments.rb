class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :chemical
      t.integer :price
      t.references :pest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

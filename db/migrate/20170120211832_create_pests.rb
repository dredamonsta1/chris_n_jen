class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

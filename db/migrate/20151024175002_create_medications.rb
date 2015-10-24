class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.text :description
      t.integer :product_id
      t.datetime :last_opened
      t.integer :openinterval
      t.belongs_to :user, index: true, foreign_key: true
      t.boolean :open_alert
      t.boolean :reminder_on

      t.timestamps null: false
    end
  end
end

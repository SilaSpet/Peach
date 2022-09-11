class CreateBodyMeasurements < ActiveRecord::Migration[7.0]
  def change
    create_table :body_measurements do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :diary_entry, null: false, foreign_key: true
      t.belongs_to :body_measurement_key, null: false, foreign_key: true
      t.float :value, null: false

      t.timestamps
    end
  end
end

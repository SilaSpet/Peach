class CreateBodyMeasurementKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :body_measurement_keys do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end

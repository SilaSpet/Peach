class BodyMeasurement < ApplicationRecord
  belongs_to :account
  belongs_to :diary_entry
  belongs_to :body_measurement_key

  validates :value, presence: true
end

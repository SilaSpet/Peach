class BodyMeasurementKey < ApplicationRecord
  belongs_to :account

  validates :name, presence: true
end

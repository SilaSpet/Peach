class BodyMeasurementKey < ApplicationRecord
  belongs_to :account

  has_many :body_measurements

  validates :name, presence: true
end

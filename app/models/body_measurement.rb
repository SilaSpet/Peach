class BodyMeasurement < ApplicationRecord
  belongs_to :account
  belongs_to :diary_entry
  belongs_to :body_measurement_key

  validates :value, presence: true

  before_validation :set_default_account_id

  private

  def set_default_account_id
    self.account_id = diary_entry.account_id
  end
end

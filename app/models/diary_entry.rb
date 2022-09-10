class DiaryEntry < ApplicationRecord
  belongs_to :account

  has_many :body_measurements, dependent: :destroy

  accepts_nested_attributes_for :body_measurements, reject_if: proc { |attributes| attributes["value"].blank? }

  validates :taken_at, presence: true
end

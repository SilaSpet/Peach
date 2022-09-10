class DiaryEntry < ApplicationRecord
  belongs_to :account

  has_many :body_measurements

  validates :taken_at, presence: true
end

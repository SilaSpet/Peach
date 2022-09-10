class DiaryEntry < ApplicationRecord
  belongs_to :account

  validates :taken_at, presence: true
end

class Task < ApplicationRecord
  validates :title, presence: true

  def self.ending_first
    order :deadline
  end
end

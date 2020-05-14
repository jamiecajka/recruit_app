class Year < ApplicationRecord
  OPTIONS = [
    [true, 'Active'],
    [false, 'Inactive']
  ]

  has_many :recruits
  has_many :applicants

  validates :year, presence: true, numericality: true, presence: true, uniqueness: true
  validates :active, presence: true, inclusion: { in: [true, false] }

end

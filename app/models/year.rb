class Year < ApplicationRecord

  has_many :recruits
  has_many :applicants

  validates :year, presence: true, numericality: true, presence: true, uniqueness: true
  validates :status, presence: true, inclusion: { in: ['active', 'inactive'] }

end

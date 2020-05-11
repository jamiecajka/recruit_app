class Year < ApplicationRecord
  has_many :recruits
  has_many :applicants

  validates :year, presence: true

end

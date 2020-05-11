class Position < ApplicationRecord
  has_many :recruits
  has_many :applicants

  validates :name, presence: true

end

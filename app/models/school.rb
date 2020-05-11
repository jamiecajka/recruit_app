class School < ApplicationRecord
  has_many :applicants
  has_many :recruits

  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :coach, presence: true
  validates :phone, presence: true
end

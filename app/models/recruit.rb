class Recruit < ApplicationRecord
  OPTIONS = [
    ['Recruit', 1],
    ['Applicant', 2]
  ]

  belongs_to :school
  belongs_to :position
  belongs_to :level
  belongs_to :funnel
  belongs_to :year
  belongs_to :status

  has_many :cnotes
  has_many :mnotes
  has_many :recuitfunnels

  def full_name
    "#{first_name} #{last_name}"
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone, presence: true
  validates :height, presence: true
  validates :email, presence: true

end

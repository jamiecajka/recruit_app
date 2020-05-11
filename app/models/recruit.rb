class Recruit < ApplicationRecord
  belongs_to :school
  belongs_to :position
  belongs_to :level
  belongs_to :funnel
  belongs_to :year

  has_many :cnotes
  has_many :mnotes
  has_many :recuitfunnels

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone, presence: true
  validates :gpa, presence: true
  validates :height, presence: true
  validates :email, presence: true
  validates :basketball, presence: true
  validates :academic, presence: true
  validates :ppg, presence: true
  validates :o_rebound, presence: true
  validates :d_rebound, presence: true
  validates :two, presence: true
  validates :three, presence: true
  validates :free_throw, presence: true
  validates :assists, presence: true
  validates :steals, presence: true
  validates :turn_overs, presence: true
  validates :blocks, presence: true
  validates :minutes, presence: true

end

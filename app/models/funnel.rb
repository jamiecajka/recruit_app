class Funnel < ApplicationRecord
  has_many :recruites
  has_many :recruitfunnels

  validates :name, presence: true

end

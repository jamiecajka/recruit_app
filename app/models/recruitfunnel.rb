class Recruitfunnel < ApplicationRecord
  belongs_to :recuit
  belongs_to :funnel

  validates :date, presence: true
end

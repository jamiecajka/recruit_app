class Level < ApplicationRecord
  has_many :recruits

  validates :name, presence: true

end

class Cnote < ApplicationRecord
  belongs_to :recruit
  belongs_to :user

  validates :text, presence: true
  validates :date, presence: true

end

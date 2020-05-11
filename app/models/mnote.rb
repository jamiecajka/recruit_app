class Mnote < ApplicationRecord
  belongs_to :recruit

  validates :text, presence: true

end

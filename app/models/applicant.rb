class Applicant < ApplicationRecord
  belongs_to :school
  belongs_to :position
  belongs_to :year

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone, presence: true
  validates :gpa, presence: true
  validates :height, presence: true
  validates :email, presence: true

end

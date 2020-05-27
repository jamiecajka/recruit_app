class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 OPTIONS = [
   ['active', 'Active'],
   ['inactive', 'Inactive']
 ]

  validates :name, presence: true
  validates :status, presence: true
  validates :email, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

  def coach?
    key == 'LC6y-;{$J:Gp<E*v'
  end
end

class Stadium < ApplicationRecord
  has_many :teams, dependent: :destroy
  validates_associated :teams
  validates :name, presence: true
  validates :location, presence: true, inclusion: { in: %w[England Germany Spain Italy France] }
  validates :capacity, presence: true, numericality: { only_integer: true }
end

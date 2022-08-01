class Team < ApplicationRecord
  belongs_to :stadium
  validates_associated :stadium
  validates :name, presence: true
  validates :squad_size, presence: true, inclusion: 20..25, numericality: { only_integer: true }
end

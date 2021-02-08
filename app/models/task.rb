class Task < ApplicationRecord
    # Relations
    has_many :chores
    has_many :children, through: :chores

    # Validations
    validates_presence_of :name
    validates_numericality_of :points, only_integer: true
    validates_inclusion_of :points, in: 0..100

    # Scopes
    scope :alphabetical, -> { order ('name')}
    scope :active, -> { where(active: true)}
  
end

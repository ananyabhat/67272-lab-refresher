class Task < ApplicationRecord
    # Relations
    has_many :chores
    has_many :children, through: :chores

end

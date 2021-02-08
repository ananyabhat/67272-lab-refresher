class Chore < ApplicationRecord
    # Relations
    belongs_to :child
    belongs_to :task

    # Validations
    validates_date :due_on

    # Scopes
    scope :by_task, -> { joins(:task).order('name') }
    scope :chronological, -> { order ('due_on, completed') }
    

end

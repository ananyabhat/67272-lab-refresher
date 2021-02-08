class Chore < ApplicationRecord
    # Relations
    belongs_to :child
    belongs_to :task

    # Validations
    validates_date :due_on

end

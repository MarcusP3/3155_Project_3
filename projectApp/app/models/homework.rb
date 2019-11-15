class Homework < ApplicationRecord
    validates :hw_name, presence: true
    validates :due_date, presence: true
    validates :time_required, presence: true
end

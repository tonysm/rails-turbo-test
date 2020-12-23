class TaskList < ApplicationRecord
    has_many :tasks
    broadcasts
end

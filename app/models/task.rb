class Task < ApplicationRecord
  belongs_to :task_list
  broadcasts_to :task_list
end

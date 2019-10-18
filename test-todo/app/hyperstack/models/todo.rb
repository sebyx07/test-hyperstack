class Todo < ApplicationRecord
  scope :completed, -> { where(completed: true) }
  scope :active, -> { where(completed: false) }

  def full_name
    title + id.to_s
  end
end

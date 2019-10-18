class Todo < ApplicationRecord
  def full_name
    title + id.to_s
  end
end

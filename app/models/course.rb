class Course < ApplicationRecord
  validates(:name, presence: true, uniqueness: {case_sensitive: false})
  validates(:total_hours, presence: true)
end

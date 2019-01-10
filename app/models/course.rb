class Course < ApplicationRecord
  has_many :cohorts
  validates(:name, presence: true, uniqueness: {case_sensitive: false})
  validates(:total_hours, presence: true, numericality: {greater_than: 0, less_than: 1001})
end

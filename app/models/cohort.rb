class Cohort < ApplicationRecord
  has_many :students
  has_one :instructor
  validates(:name, presence: true, uniqueness: {case_sensitive: false})
  validates(:start_date, presence: true)
  validates(:end_date, presence: true)
end

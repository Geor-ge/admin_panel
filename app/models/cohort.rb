class Cohort < ApplicationRecord
  has_many :students
  has_one :instructor
end

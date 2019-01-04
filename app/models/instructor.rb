class Instructor < ApplicationRecord
  belongs_to :cohort, optional: true
  before_save{self.rank = rank.upcase}
  validates(:f_name, presence: true)
  validates(:l_name, presence: true)
  validates(:age, presence: true, numericality: {greater_than: 0, less_than: 150})
  validates(:salary, presence: true, numericality: {greater_than: 0})
  validates(:rank, presence: true)

end

class Instructor < ApplicationRecord
  belongs_to :cohort
  before_save{self.f_name = f_name.capitalize}
  before_save{self.l_name = l_name.capitalize}
  validates(:f_name, presence: true)
  validates(:l_name, presence: true)
  validates(:age, presence: true)
  validates(:salary, presence: true)
  validates(:cohort_id, uniqueness: true)

end

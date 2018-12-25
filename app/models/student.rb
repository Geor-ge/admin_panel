class Student < ApplicationRecord
  belongs_to :cohort
  before_save{self.f_name = f_name.capitalize}
  validates(:f_name, presence: true)
  validates(:l_name, presence: true)
  validates(:age, presence: true)
  validates(:rank, presence: true)

end

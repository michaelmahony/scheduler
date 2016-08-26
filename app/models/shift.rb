class Shift < ApplicationRecord
  # exquisite join
  belongs_to :day
  belongs_to :employee
end

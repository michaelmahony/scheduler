class Day < ApplicationRecord
  belongs_to :firm
  has_many :shifts
  has_many :employees, through: :shifts
end

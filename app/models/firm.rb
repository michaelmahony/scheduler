class Firm < ApplicationRecord
  has_many :employees, dependent: :destroy
end

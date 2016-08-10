class Firm < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :days, dependent: :destroy
end

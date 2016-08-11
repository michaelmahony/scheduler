class Firm < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :days, dependent: :destroy

  def auto_schedule_week(begin_date)
    week = []

    # For each day in the week
    for i in 0..6

      the_date = begin_date + i
      the_day = Day.find_by(date: the_date, firm: self)
      week.push(the_day)
    end

  end

end
class Employee < ApplicationRecord
  belongs_to :firm

  def get_pref_text(date)
    mapping = {0.0 => "Prefers Off", 0.5 => "Strongly Prefers Off", 1.0 => "Can work"}

    # Check if the day was requested off specifically
    the_day = Day.find_by(date: date, firm: self.firm)
    if the_day
      the_shift = Shift.find_by(employee: self, day: the_day)
      if the_shift
        if the_shift.requrested_off == true
          return "Requested Off"
        end
      end
    end

    # If not requested off, go to the specific preferences
    case date.strftime("%a")
      when "Mon"
        val = self.mon_pref
      when "Tue"
        val = self.tue_pref
      when "Wed"
        val = self.wed_pref
      when "Thu"
        val = self.thu_pref
      when "Fri"
        val = self.fri_pref
      when "Sat"
        val = self.sat_pref
      when "Sun"
        val = self.sun_pref
    end

    return mapping[val]
  end

  def get_pref_val(date)

    case date.strftime("%a")
      when "Mon"
        val = self.mon_pref
      when "Tue"
        val = self.tue_pref
      when "Wed"
        val = self.wed_pref
      when "Thu"
        val = self.thu_pref
      when "Fri"
        val = self.fri_pref
      when "Sat"
        val = self.sat_pref
      when "Sun"
        val = self.sun_pref
    end

    return val
  end

  def get_pref_class(date)
    mapping = {0.0 => "cannot-work-strong", 0.5 => "cannot-work-weak", 1.0 => "can-work"}

    # Check if the day was requested off specifically
    the_day = Day.find_by(date: date, firm: self.firm)
    if the_day
      the_shift = Shift.find_by(employee: self, day: the_day)
      if the_shift
        if the_shift.requested_off == true
          return "requested-off"
        end
      end
    end

    # If not requested off, go to the specific preferences
    case date.strftime("%a")
      when "Mon"
        val = self.mon_pref
      when "Tue"
        val = self.tue_pref
      when "Wed"
        val = self.wed_pref
      when "Thu"
        val = self.thu_pref
      when "Fri"
        val = self.fri_pref
      when "Sat"
        val = self.sat_pref
      when "Sun"
        val = self.sun_pref
    end

    return mapping[val]
  end

  def request_off(date)
    the_day = Day.find_by(date: date, firm: self.firm)
    if not the_day
      the_day = Day.create!(date: date, firm: self.firm)
    end

    requesting_off = Shift.find_by(employee: self, day: the_day)
    if not requesting_off
      requesting_off = Shift.create(employee: self, day: the_day)
    end

    requesting_off.update!(requested_off: true)
  end

  def cancel_request_off(date)
    the_day = Day.find_by(date: date, firm: self.firm)

    if the_day
      requesting_off = Shift.find_by(employee: self, day: the_day)
      if not requesting_off
        requesting_off = Shift.create(employee: self, day: the_day)
      end

      requesting_off.update!(requested_off: false)
    end


  end

  def schedule(date)
    the_day = Day.find_by(date: date, firm: self.firm)
    if not the_day
      the_day = Day.create!(date: date, firm: self.firm)
    end

    scheduled = Shift.find_by(employee: self, day: the_day)
    if not requesting_off
      scheduled = Shift.create(employee: self, day: the_day)
    end

    scheduled.update!(is_scheduled: true)
  end

  def get_is_scheduled(date)
    # If the day and the shift exist
    the_day = Day.find_by(date: date, firm: self.firm)
    if the_day
      the_shift = Shift.find_by(employee: self, day: the_day)
      if the_shift
        # If the employee is scheduled for the shift
        if the_shift.is_scheduled == true
          return true
        end
      end
    end

    # If any of the above conditions return false
    return false
  end

end

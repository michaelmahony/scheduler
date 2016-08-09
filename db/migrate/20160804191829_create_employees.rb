class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :firm_id

      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number

      t.float :hourly_pay_rate
      t.boolean :overtime_exempt
      t.float :overtime_multiplier
      t.float :lunch_duration

      t.float :max_hours_hard_limit
      t.float :hours_overtime_threshold

      # The preference fields will hold a float in the range 0 - 1 inclusive.
      # A 1 represents full ability to work while 0 represents a day that is the
      #   employees strongest preference not to work. Intermediate values are valid.
      t.float :mon_pref
      t.float :tue_pref
      t.float :wed_pref
      t.float :thu_pref
      t.float :fri_pref
      t.float :sat_pref
      t.float :sun_pref
    end
  end
end

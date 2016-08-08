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

    end
  end
end

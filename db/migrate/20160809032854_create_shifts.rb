class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.date :date
      t.integer :employee_id
      t.integer :day_id
      t.boolean :requested_off
      t.boolean :is_scheduled
      t.timestamps
    end
  end
end

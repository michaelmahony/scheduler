class CreateFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :firms do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code

      t.time :mon_open_time
      t.time :mon_close_time
      t.time :tue_open_time
      t.time :tue_close_time
      t.time :wed_open_time
      t.time :wed_close_time
      t.time :thu_open_time
      t.time :thu_close_time
      t.time :fri_open_time
      t.time :fri_close_time
      t.time :sat_open_time
      t.time :sat_close_time
      t.time :sun_open_time
      t.time :sun_close_time

      t.timestamps
    end
  end
end

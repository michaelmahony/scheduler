class CreateFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :firms do |t|
      t.String :name
      t.String :phone_number

      t.String :mon_open_time
      t.String :mon_close_time
      t.String :tue_open_time
      t.String :tue_close_time
      t.String :wed_open_time
      t.String :wed_close_time
      t.String :thu_open_time
      t.String :thu_close_time
      t.String :fri_open_time
      t.String :fri_close_time
      t.String :sat_open_time
      t.String :sat_close_time
      t.String :sun_open_time
      t.String :sun_close_time


      t.timestamps
    end
  end
end

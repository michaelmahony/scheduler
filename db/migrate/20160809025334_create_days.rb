class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :date
      t.integer :firm_id

      t.timestamps
    end
  end
end
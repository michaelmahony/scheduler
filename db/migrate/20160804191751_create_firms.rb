class CreateFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :firms do |t|

      t.timestamps
    end
  end
end

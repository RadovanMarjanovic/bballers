class AddTimeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :time, :time
    change_column :events, :date, :date
  end
end

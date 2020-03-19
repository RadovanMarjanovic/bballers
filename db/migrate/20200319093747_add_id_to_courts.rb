class AddIdToCourts < ActiveRecord::Migration[5.2]
  def change
    add_column :courts, :user_id, :integer
  end
end

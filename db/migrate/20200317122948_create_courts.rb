class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :type
      t.integer :capacity
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

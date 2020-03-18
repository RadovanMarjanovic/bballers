class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.integer :price_cents, default: 0, null: false
      t.integer :num_of_players
      t.references :court, foreign_key: true

      t.timestamps
    end
  end
end

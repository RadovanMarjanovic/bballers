class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :rated_event_user_id
      t.integer :rating_event_user_id
      t.references :event_users, foreign_key: true

      t.timestamps
    end
  end
end

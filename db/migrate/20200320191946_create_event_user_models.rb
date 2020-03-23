class CreateEventUserModels < ActiveRecord::Migration[5.2]
  def change
    create_table :event_user_models do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end

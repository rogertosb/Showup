class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :banner
      t.string :food
      t.string :drink
      t.integer :number_max_of_attendees
      t.integer :stake
      t.date :start_time
      t.date :end_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

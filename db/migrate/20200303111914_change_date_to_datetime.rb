class ChangeDateToDatetime < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :start_time, :datetime
    change_column :events, :end_time, :datetime
  end
end

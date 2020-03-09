class ChangeStakeToAddMonetizeInEvents < ActiveRecord::Migration[5.2]
  def change
    add_monetize :events, :stake, currency: { present: false }
  end
end

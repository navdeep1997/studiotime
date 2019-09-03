class CreateBooking < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :listing, foreign_key: true
      t.date :booking_date
      t.time :start_time
      t.time :end_time
      t.boolean :gov_id_on_arrival
      t.boolean :studiotime_policy
      t.text :booking_message
      t.text :plan_to_use_studio
      t.timestamps
    end
  end
end

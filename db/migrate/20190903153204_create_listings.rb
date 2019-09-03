class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :category
      t.boolean :verified
      t.float :ratings
      t.string :studio_type
      t.boolean :quick_replies
      t.boolean :audio_engineer
      t.string :photo_url
      t.integer :minimum_booking
      t.string :amenities
      t.string :main_equipments
      t.string :past_clients
      t.string :audio_sample
      t.string :studio_hours
      t.text :studio_rule
      t.text :studio_cancellation_policy
      t.integer :verified_reviews
      t.string :location
      t.float :price_per_hour
      t.float :studio_time_fee

      t.timestamps
    end
  end
end

class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.float :rate
      t.integer :listing_id
      t.timestamps
    end
  end
end

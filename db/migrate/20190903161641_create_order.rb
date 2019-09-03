class CreateOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :title
      t.integer :booking_id
      t.float :final_amount
      t.string :currency
      t.string :confirmed_status
      t.float :payment_confirmation
      t.integer :payment_id
      t.timestamps
    end
  end
end

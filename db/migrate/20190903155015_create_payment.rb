class CreatePayment < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :cardholder_name
      t.string :street_address
      t.string :postal_code
      t.string :city
      t.string :state
      t.string :country
      t.string :cc_no
      t.string :cc_validity
    end
  end
end

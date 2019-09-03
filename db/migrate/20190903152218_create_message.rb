class CreateMessage < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :title
      t.integer :convsersation_id
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :read_receipient
      t.timestamps
    end
  end
end

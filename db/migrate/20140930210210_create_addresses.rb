class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_one
      t.string :line_two
      t.string :city
      t.string :county
      t.integer :postal_code
      t.string :state
      t.integer :subscriber_id
      t.timestamps
    end
  end
end

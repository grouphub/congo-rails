class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :communication_number_one
      t.string :integer
      t.string :communication_type_one
      t.integer :communication_number_two
      t.string :communication_type

      t.timestamps
    end
  end
end

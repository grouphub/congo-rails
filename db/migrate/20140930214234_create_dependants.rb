class CreateDependants < ActiveRecord::Migration
  def change
    create_table :dependants do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :ssn
      t.date :birth_date
      t.string :gender

      t.timestamps
    end
  end
end

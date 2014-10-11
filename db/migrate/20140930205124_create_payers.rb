class CreatePayers < ActiveRecord::Migration
  def change
    create_table :payers do |t|
      t.string :name
      t.integer :tax_id

      t.timestamps
    end
  end
end

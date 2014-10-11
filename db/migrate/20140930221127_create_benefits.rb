class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.date :begin_date
      t.string :benefit_type
      t.string :coordination_of_benefits
      t.boolean :late_enrollment
      t.string :maintenance_type

      t.timestamps
    end
  end
end

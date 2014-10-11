class CreateCoordinationOfBenefitsses < ActiveRecord::Migration
  def change
    create_table :coordination_of_benefitsses do |t|
      t.string :group_or_policy_number
      t.string :payer_responsibility
      t.string :status

      t.timestamps
    end
  end
end

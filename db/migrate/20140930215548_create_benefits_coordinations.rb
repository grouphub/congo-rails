class CreateBenefitsCoordinations < ActiveRecord::Migration
  def change
    create_table :benefits_coordinations do |t|
      t.string :group_or_policy_number
      t.string :payer_responsibility
      t.string :status

      t.timestamps
    end
  end
end

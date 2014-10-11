class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :benefit_status
      t.string :benefits
      t.date :birth_date
      t.string :contacts
      t.date :eligibility_begin_date
      t.string :employment_status
      t.string :first_name
      t.string :gender
      t.string :group_or_policy_number
      t.boolean :handicapped
      t.string :last_name
      t.string :maintenance_reason
      t.string :maintenance_type
      t.string :member_id
      t.string :middle_name
      t.string :relationship
      t.integer :ssn
      t.string :subscriber_number
      t.boolean :substance_abuse
      t.boolean :tobacco_use
      t.timestamps
    end
  end
end

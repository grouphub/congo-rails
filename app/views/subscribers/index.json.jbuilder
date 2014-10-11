json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :benefit_status, :benefits, :birth_date, :contacts, :eligibility_begin_date, :employment_status, :first_name, :gender, :group_or_policy_number, :handicapped, :last_name, :maintenance_reason, :maintenance_type, :member_id, :middle_name, :relationship, :ssn, :subscriber_number, :substance_abuse, :tobacco_use
  json.url subscriber_url(subscriber, format: :json)
end

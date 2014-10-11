json.array!(@benefits) do |benefit|
  json.extract! benefit, :id, :begin_date, :benefit_type, :coordination_of_benefits, :late_enrollment, :maintenance_type
  json.url benefit_url(benefit, format: :json)
end

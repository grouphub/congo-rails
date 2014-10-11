json.array!(@benefits_coordinations) do |benefits_coordination|
  json.extract! benefits_coordination, :id, :group_or_policy_number, :payer_responsibility, :status
  json.url benefits_coordination_url(benefits_coordination, format: :json)
end

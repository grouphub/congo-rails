json.array!(@dependants) do |dependant|
  json.extract! dependant, :id, :first_name, :middle_name, :last_name, :ssn, :birth_date, :gender
  json.url dependant_url(dependant, format: :json)
end

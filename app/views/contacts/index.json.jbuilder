json.array!(@contacts) do |contact|
  json.extract! contact, :id, :communication_number_one, :integer, :communication_type_one, :communication_number_two, :communication_type
  json.url contact_url(contact, format: :json)
end

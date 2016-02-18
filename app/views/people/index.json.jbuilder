json.array!(@people) do |person|
  json.extract! person, :id, :name, :street, :city, :state
  json.url person_url(person, format: :json)
end

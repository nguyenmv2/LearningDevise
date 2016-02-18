json.array!(@customizations) do |customization|
  json.extract! customization, :id, :modifier_id
  json.url customization_url(customization, format: :json)
end

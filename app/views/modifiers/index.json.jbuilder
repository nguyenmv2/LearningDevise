json.array!(@modifiers) do |modifier|
  json.extract! modifier, :id, :name, :deltaPrice, :description
  json.url modifier_url(modifier, format: :json)
end

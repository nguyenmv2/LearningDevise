json.array!(@items) do |item|
  json.extract! item, :id, :name, :price, :description, :modifier_id
  json.url item_url(item, format: :json)
end

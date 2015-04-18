json.array!(@items) do |item|
  json.extract! item, :id, :title, :subtitle, :code
  json.url item_url(item, format: :json)
end

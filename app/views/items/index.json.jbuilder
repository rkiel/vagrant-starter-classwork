json.array!(@items) do |item|
  json.extract! item, :id, :description, :due_date
  json.url item_url(item, format: :json)
end

json.array!(@regions) do |region|
  json.extract! region, :id, :region_id, :region_nombre
  json.url region_url(region, format: :json)
end

json.array!(@propiedads) do |propiedad|
  json.extract! propiedad, :id, :propiedad_id, :propiedad_nombre
  json.url propiedad_url(propiedad, format: :json)
end

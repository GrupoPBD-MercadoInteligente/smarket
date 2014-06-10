json.array!(@productos) do |producto|
  json.extract! producto, :id, :producto_id, :clase_id, :producto_nombre
  json.url producto_url(producto, format: :json)
end

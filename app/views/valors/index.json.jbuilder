json.array!(@valors) do |valor|
  json.extract! valor, :id, :valor_id, :propiedad_id, :producto_id, :valor_nombre
  json.url valor_url(valor, format: :json)
end

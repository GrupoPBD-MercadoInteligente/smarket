json.array!(@producto_rematados) do |producto_rematado|
  json.extract! producto_rematado, :id, :producto_id, :prod_sub_id, :prod_sub_cantidad, :prod_sub_precio_unitario
  json.url producto_rematado_url(producto_rematado, format: :json)
end

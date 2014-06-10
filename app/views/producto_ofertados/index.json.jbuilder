json.array!(@producto_ofertados) do |producto_ofertado|
  json.extract! producto_ofertado, :id, :producto_id, :producto_of_id, :usuario_id, :producto_of_cantidad, :producto_of_precio_unitario, :producto_of_fecha_publicacion
  json.url producto_ofertado_url(producto_ofertado, format: :json)
end

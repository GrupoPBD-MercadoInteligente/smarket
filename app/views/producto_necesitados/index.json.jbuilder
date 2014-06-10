json.array!(@producto_necesitados) do |producto_necesitado|
  json.extract! producto_necesitado, :id, :producto_id, :prod_nec_id, :usuario_id, :prod_nec_cantidad, :prod_nec_preciotope, :prod_nec_fecha_publicacion
  json.url producto_necesitado_url(producto_necesitado, format: :json)
end

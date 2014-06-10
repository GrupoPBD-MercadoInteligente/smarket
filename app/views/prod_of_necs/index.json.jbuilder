json.array!(@prod_of_necs) do |prod_of_nec|
  json.extract! prod_of_nec, :id, :producto_id, :prod_of_nec_id, :usuario_id, :estado_prod_of_necesidad_id, :prod_nec_id, :prod_of_nec_cantidad, :prod_of_nec_precio_unitario, :prod_of_nec_fecha_publicacion
  json.url prod_of_nec_url(prod_of_nec, format: :json)
end

json.array!(@compra_venta_normals) do |compra_venta_normal|
  json.extract! compra_venta_normal, :id, :tipo_trans_id, :compraventa_id2, :usuario_id, :usu_usuario_id, :producto_of_id, :compraventanor_fecha
  json.url compra_venta_normal_url(compra_venta_normal, format: :json)
end

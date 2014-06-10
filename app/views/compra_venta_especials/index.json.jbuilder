json.array!(@compra_venta_especials) do |compra_venta_especial|
  json.extract! compra_venta_especial, :id, :tipo_trans_id, :compraventa_id, :usuario_id, :prod_of_nec_id, :usu_usuario_id, :compraventanor_fecha
  json.url compra_venta_especial_url(compra_venta_especial, format: :json)
end

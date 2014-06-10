json.array!(@compra_remates) do |compra_remate|
  json.extract! compra_remate, :id, :tipo_trans_id, :comprasubasta_id, :usuario_id, :prod_sub_id, :usu_usuario_id, :comprasubasta_fecha
  json.url compra_remate_url(compra_remate, format: :json)
end

json.array!(@remates) do |remate|
  json.extract! remate, :id, :sub_id, :estado_subasta_id, :usuario_id, :prod_sub_id, :sub_monto_max, :sub_fecha_inicio, :sub_fecha_termino
  json.url remate_url(remate, format: :json)
end

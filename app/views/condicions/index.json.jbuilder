json.array!(@condicions) do |condicion|
  json.extract! condicion, :id, :condicion_id, :tipo_trans_id, :condicion_porcentaje_comision
  json.url condicion_url(condicion, format: :json)
end

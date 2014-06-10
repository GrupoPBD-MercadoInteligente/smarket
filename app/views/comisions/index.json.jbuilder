json.array!(@comisions) do |comision|
  json.extract! comision, :id, :comision_id, :transaccion_id, :comision_monto
  json.url comision_url(comision, format: :json)
end

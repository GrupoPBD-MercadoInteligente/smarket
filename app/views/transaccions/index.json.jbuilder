json.array!(@transaccions) do |transaccion|
  json.extract! transaccion, :id, :transaccion_id, :tipo_trans_id
  json.url transaccion_url(transaccion, format: :json)
end

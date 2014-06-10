json.array!(@tipo_transaccions) do |tipo_transaccion|
  json.extract! tipo_transaccion, :id, :tipo_trans_id
  json.url tipo_transaccion_url(tipo_transaccion, format: :json)
end

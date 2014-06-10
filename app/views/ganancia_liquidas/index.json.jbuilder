json.array!(@ganancia_liquidas) do |ganancia_liquida|
  json.extract! ganancia_liquida, :id, :ganancia_liquida_id, :transaccion_id, :ganancia_liquida_monto
  json.url ganancia_liquida_url(ganancia_liquida, format: :json)
end

json.array!(@pujas) do |puja|
  json.extract! puja, :id, :puja_id, :sub_id, :usuario_id, :puja_valor, :puja_correlativo
  json.url puja_url(puja, format: :json)
end

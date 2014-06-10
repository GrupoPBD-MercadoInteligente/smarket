json.array!(@est_prod_of_necs) do |est_prod_of_nec|
  json.extract! est_prod_of_nec, :id, :estado_prod_of_necesidad_id, :estado_prod_of_necesidad_nombre
  json.url est_prod_of_nec_url(est_prod_of_nec, format: :json)
end

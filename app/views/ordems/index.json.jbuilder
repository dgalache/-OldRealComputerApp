json.array!(@ordems) do |ordem|
  json.extract! ordem, :id, :equipamento, :marca, :defeito, :descricao, :status, :valor, :tecnico_id, :cliente_id
  json.url ordem_url(ordem, format: :json)
end

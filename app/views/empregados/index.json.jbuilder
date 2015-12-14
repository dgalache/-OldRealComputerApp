json.array!(@empregados) do |empregado|
  json.extract! empregado, :id, :nome, :telefone, :endereco, :rg, :cpf, :dataadm, :funcao_id
  json.url empregado_url(empregado, format: :json)
end

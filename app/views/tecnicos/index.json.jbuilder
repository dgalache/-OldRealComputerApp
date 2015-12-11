json.array!(@tecnicos) do |tecnico|
  json.extract! tecnico, :id, :nome, :cpf, :rg, :endereco, :dataadm, :salario
  json.url tecnico_url(tecnico, format: :json)
end

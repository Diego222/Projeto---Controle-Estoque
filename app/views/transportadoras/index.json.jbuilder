json.array!(@transportadoras) do |transportadora|
  json.extract! transportadora, :id, :nome, :endereco, :cidade, :estado, :telefone, :cnpj, :inscricao_estadual
  json.url transportadora_url(transportadora, format: :json)
end

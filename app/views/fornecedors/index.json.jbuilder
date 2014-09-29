json.array!(@fornecedors) do |fornecedor|
  json.extract! fornecedor, :id, :empresa, :contato, :endereco, :bairro, :cidade, :estado, :cep, :telefone, :fax, :cnpj, :inscricao_estadual, :data_cadastro, :email
  json.url fornecedor_url(fornecedor, format: :json)
end

json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :endereco, :bairro, :cidade, :estado, :cep, :telefone, :identidade, :cpf, :nascimento, :tipo_cliente, :data_cadastro
  json.url cliente_url(cliente, format: :json)
end

json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :endereco, :bairro, :cidade, :estado, :cep, :telefone, :admissao, :salario, :cpf, :identidade, :nascimento, :cargo
  json.url funcionario_url(funcionario, format: :json)
end

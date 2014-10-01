FactoryGirl.define do
	factory :funcionario do
		nome { 'Nome' }
		endereco { 'rua bla bla' }
		bairro { 'ddd' }
		cidade { 'hhh' }
		estado { 'SP' }
		cep { '14.807.026' }
		telefone { '(16) 2222-2222' }
		nascimento { '08/23/1990' }
		identidade { '34.456.456-8' }
		cpf { '345.845.765.09' }
		cargo { 'Diretor' }
		salario { 200 }
		admissao { '08/23/1990' }
	end
end
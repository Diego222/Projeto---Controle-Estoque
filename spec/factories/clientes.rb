FactoryGirl.define do
	factory :cliente do
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
		tipo_cliente { 'Cliente Vip' }
		data_cadastro { '08/23/1990' }
	end
end
FactoryGirl.define do
	factory :fornecedor do
		empresa { 'S2' }
		contato { 'ddd' }
		endereco { 'rua bla bla' }
		bairro { 'ddd' }
		cidade { 'hhh' }
		estado { 'SP' }
		cep { '14.807.026' }
		telefone { '(16) 2222-2222' }
		fax { '111 1111-1111' }
		cnpj { '11.111.111/1111-11' }
		inscricao_estadual { '111.111.111.111' }
		email { 'diguinhu222@hotmail.com' }
		data_cadastro { '08/23/1990' }
	end
end
FactoryGirl.define do
	factory :transportadora do
		nome { 'Nome' }
		endereco { 'rua bla bla' }
		cidade { 'hhh' }
		estado { 'SP' }
		telefone { '(16) 2222-2222' }	
		cnpj { '11.111.111/1111-11' }
		inscricao_estadual { '111.111.111.111' }
	end
end
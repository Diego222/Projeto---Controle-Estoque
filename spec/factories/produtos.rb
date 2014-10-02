FactoryGirl.define do
	factory :produto do
		descricao_produto { 'Nome' }
		tipo { 'Tecido' }
		fornecedor { 'hhh' }
		fabricante { 'SP' }
		preco_custo { '(16) 2222-2222' }	
		preco_venda { '11.111.111/1111-11' }
		data_ultimo_reajuste { '111.111.111.111' }
	end
end
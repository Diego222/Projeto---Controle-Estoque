FactoryGirl.define do
	factory :produto do
		descricao_produto { 'Nome' }
		tipo { 'Tecido' }
		quantidade { '10' }
		association :fornecedor	
		fabricante { 'kkk' }
		preco_custo { '120' }	
		preco_venda { '150' }
		data_ultimo_reajuste { '09/24/2014' }
	end
end
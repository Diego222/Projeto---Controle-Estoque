FactoryGirl.define do
	factory :pedido do
		association :fornecedor
		data { '09/24/2014' }
		email { 'diguinhu222@hotmail.com' }
		pedido { 'kkk' }
		observacoes { 'aaaa' }	
	end
end
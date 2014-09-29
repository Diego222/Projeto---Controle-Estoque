require 'rails_helper'

	feature "Novo Cliente" do
		scenario "Cliente" do
		cliente = FactoryGirl.create(:cliente)

		visit new_cliente_path
		fill_in "Nome", with: cliente.nome
		fill_in "Endereco", with: cliente.endereco
		click_button "Cadastrar"

		visit edit_cliente_path(cliente.id)
		fill_in "Nome", with: "NewNome"
		click_button "Cadastrar"

		visit clientes_path 

	end
end

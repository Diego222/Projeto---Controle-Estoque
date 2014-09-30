require 'rails_helper'

	feature "Novo Fornecedor" do
		scenario "Fornecedor" do
		fornecedor = FactoryGirl.create(:fornecedor)

		visit new_fornecedor_path
		fill_in "Empresa", with: fornecedor.empresa
		fill_in "Endereco", with: fornecedor.endereco
		click_button "Cadastrar"

		visit edit_fornecedor_path(fornecedor.id)
		fill_in "Empresa", with: "NewEmpresa"
		click_button "Cadastrar"

		visit fornecedors_path 

	end
end

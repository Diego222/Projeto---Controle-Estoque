require 'rails_helper'

	feature "Novo Funcionario" do
		scenario "Funcionario" do
		funcionario = FactoryGirl.create(:funcionario)

		visit new_funcionario_path
		fill_in "Nome", with: funcionario.nome
		fill_in "Endereco", with: funcionario.endereco
		click_button "Cadastrar"

		visit edit_funcionario_path(funcionario.id)
		fill_in "Nome", with: "NewNome"
		click_button "Cadastrar"

		visit funcionarios_path 

	end
end

require 'rails_helper'
  feature "Novo Funcionario" do
    let(:funcionario) { FactoryGirl.create(:funcionario) }
    scenario "New" do    
        visit new_funcionario_path
        
        click_button "Cadastrar"        

        expect(funcionario.nome).to eq "Nome"
        expect(funcionario.endereco).to eq "rua bla bla"  

        #expect(page).to have_content("Joao da Silva")
        #expect(page).to have_content("Rua ABC")
    end
  end

  feature "Edit Funcionario" do
    let!(:funcionario) { FactoryGirl.create(:funcionario) }
    scenario "Edit" do
        visit edit_funcionario_path(funcionario)
        fill_in "Nome", with: "NewNome"
        click_button "Cadastrar"
        
        expect(funcionario.reload.nome).to eq "NewNome"
        expect(page).to have_content("NewNome")
    end    
  end
require 'rails_helper'
  feature "Nova Transportadora" do
    let(:transportadora) { FactoryGirl.create(:transportadora) }
    scenario "New" do    
        visit new_transportadora_path
        
        click_button "Cadastrar"        

        expect(transportadora.nome).to eq "Nome"
        expect(transportadora.endereco).to eq "rua bla bla"  

        #expect(page).to have_content("Joao da Silva")
        #expect(page).to have_content("Rua ABC")
    end
  end

  feature "Edit Transportadora" do
    let!(:transportadora) { FactoryGirl.create(:transportadora) }
    scenario "Edit" do
        visit edit_transportadora_path(transportadora)
        fill_in "Nome", with: "NewNome"
        click_button "Cadastrar"
        
        expect(transportadora.reload.nome).to eq "NewNome"
        expect(page).to have_content("NewNome")
    end    
  end
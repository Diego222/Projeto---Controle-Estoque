require 'rails_helper'
  feature "Novo Cliente" do
    let(:cliente) { FactoryGirl.create(:cliente) }
    scenario "New" do    
        visit new_cliente_path
        
        click_button "Cadastrar"        

        expect(cliente.nome).to eq "Nome"
        expect(cliente.endereco).to eq "rua bla bla"  

        #expect(page).to have_content("Nome")
        #expect(page).to have_content("rua bla bla")
    end
  end

  feature "Edit Cliente" do
    let!(:cliente) { FactoryGirl.create(:cliente) }
    scenario "Edit" do
        visit edit_cliente_path(cliente)
        fill_in "Nome", with: "NewNome"
        click_button "Cadastrar"
        
        expect(cliente.reload.nome).to eq "NewNome"
        expect(page).to have_content("NewNome")
    end    
  end

  feature "Destroy Cliente" do
    let(:cliente) { FactoryGirl.create(:cliente) }
    scenario "Destroy" do
      visit clientes_path 
      expect{ click_link destroy(cliente.id) }.to change{Cliente.count}.by(1) # CHECK URL
      expect(Cliente.count).to eq 0
    end
  end

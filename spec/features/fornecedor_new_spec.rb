require 'rails_helper'
  feature "Novo Fornecedor" do
    let(:fornecedor) { FactoryGirl.create(:fornecedor) }
    scenario "New" do    
        visit new_fornecedor_path
        
        click_button "Cadastrar"        

        expect(fornecedor.empresa).to eq "S2"
        expect(fornecedor.endereco).to eq "rua bla bla"  

        #expect(page).to have_content("Joao da Silva")
        #expect(page).to have_content("Rua ABC")
    end
  end

  feature "Edit Fornecedor" do
    let!(:fornecedor) { FactoryGirl.create(:fornecedor) }
    scenario "Edit" do
        visit edit_fornecedor_path(fornecedor)
        fill_in "Empresa", with: "NewEmpresa"
        click_button "Cadastrar"
        
        expect(fornecedor.reload.empresa).to eq "NewEmpresa"
        expect(page).to have_content("NewEmpresa")
    end    
  end
require 'rails_helper'
  feature "Novo Produto" do
    let(:produto) { FactoryGirl.create(:produto) }
    scenario "New" do    
        visit new_produto_path
        
        click_button "Cadastrar"        

        expect(produto.descricao_produto).to eq "Nome"
        expect(produto.fabricante).to eq "kkk"  

        #expect(page).to have_content("Joao da Silva")
        #expect(page).to have_content("Rua ABC")
    end
  end

  feature "Edit Produto" do
    let(:fornecedor) { FactoryGirl.create(:fornecedor) }
    let!(:produto) { FactoryGirl.create(:produto, fornecedor: fornecedor) }
    scenario "Edit" do
        visit edit_produto_path(produto)
        fill_in "Fabricante", with: "NewNome"
        click_button "Cadastrar"    
        
        expect(produto.reload.fabricante).to eq "NewNome"
        expect(page).to have_content("NewNome")
    end    
  end
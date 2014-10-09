require 'rails_helper'
  feature "Novo Pedido" do
    let(:pedido) { FactoryGirl.create(:pedido) }
    scenario "New" do    
        visit new_pedido_path
        
        click_button "Enviar"        

        expect(pedido.email).to eq "diguinhu222@hotmail.com"
        expect(pedido.observacoes).to eq "aaaa"  

        #expect(page).to have_content("Joao da Silva")
        #expect(page).to have_content("Rua ABC")
    end
  end

  feature "Edit Pedido" do
    let(:fornecedor) { FactoryGirl.create(:fornecedor) }
    let!(:pedido) { FactoryGirl.create(:pedido, fornecedor: fornecedor) }
    scenario "Edit" do
        visit edit_pedido_path(pedido)
        fill_in "Email", with: "NewEmail@hotmail.com"
        click_button "Enviar"    
        
        expect(pedido.reload.email).to eq "NewEmail@hotmail.com"
        expect(page).to have_content("NewEmail@hotmail.com")
    end    
  end
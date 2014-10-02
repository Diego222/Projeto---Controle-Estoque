require 'rails_helper'

RSpec.describe "produtos/show", :type => :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :descricao_produto => "Descricao_produto",
      :tipo => "Tipo",
      :fornecedor => nil,
      :fabricante => "Fabricante",
      :preco_custo => "Preco_custo",
      :preco_venda => "Preco_venda",
      :data_ultimo_reajuste => "Data_ultimo_reajuste"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao_produto/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Fabricante/)
    expect(rendered).to match(/Preco_custo/)
    expect(rendered).to match(/Preco_venda/)
    expect(rendered).to match(/Data_ultimo_reajuste/)
  end
end

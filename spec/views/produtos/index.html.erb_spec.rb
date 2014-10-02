require 'rails_helper'

RSpec.describe "produtos/index", :type => :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        :descricao_produto => "Descricao_produto",
        :tipo => "Tipo",
        :fornecedor => nil,
        :fabricante => "Fabricante",
        :preco_custo => "Preco_custo",
        :preco_venda => "Preco_venda",
        :data_ultimo_reajuste => "Data_ultimo_reajuste"
      ),
      Produto.create!(
        :descricao_produto => "Descricao_produto",
        :tipo => "Tipo",
        :fornecedor => nil,
        :fabricante => "Fabricante",
        :preco_custo => "Preco_custo",
        :preco_venda => "Preco_venda",
        :data_ultimo_reajuste => "Data_ultimo_reajuste"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", :text => "Descricao_produto".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Fabricante".to_s, :count => 2
    assert_select "tr>td", :text => "Preco_custo".to_s, :count => 2
    assert_select "tr>td", :text => "Preco_venda".to_s, :count => 2
    assert_select "tr>td", :text => "Data_ultimo_reajuste".to_s, :count => 2
  end
end

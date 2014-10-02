require 'rails_helper'

RSpec.describe "produtos/new", :type => :view do
  before(:each) do
    assign(:produto, Produto.new(
      :descricao_produto => "MyString",
      :tipo => "MyString",
      :fornecedor => nil,
      :fabricante => "MyString",
      :preco_custo => "MyString",
      :preco_venda => "MyString",
      :data_ultimo_reajuste => "MyString"
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input#produto_descricao_produto[name=?]", "produto[descricao_produto]"

      assert_select "input#produto_tipo[name=?]", "produto[tipo]"

      assert_select "input#produto_fornecedor_id[name=?]", "produto[fornecedor_id]"

      assert_select "input#produto_fabricante[name=?]", "produto[fabricante]"

      assert_select "input#produto_preco_custo[name=?]", "produto[preco_custo]"

      assert_select "input#produto_preco_venda[name=?]", "produto[preco_venda]"

      assert_select "input#produto_data_ultimo_reajuste[name=?]", "produto[data_ultimo_reajuste]"
    end
  end
end

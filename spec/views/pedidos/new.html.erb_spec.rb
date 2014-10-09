require 'rails_helper'

RSpec.describe "pedidos/new", :type => :view do
  before(:each) do
    assign(:pedido, Pedido.new(
      :fornecedor => nil,
      :data => "MyString",
      :pedido => "MyText",
      :observacoes => "MyText"
    ))
  end

  it "renders new pedido form" do
    render

    assert_select "form[action=?][method=?]", pedidos_path, "post" do

      assert_select "input#pedido_fornecedor_id[name=?]", "pedido[fornecedor_id]"

      assert_select "input#pedido_data[name=?]", "pedido[data]"

      assert_select "textarea#pedido_pedido[name=?]", "pedido[pedido]"

      assert_select "textarea#pedido_observacoes[name=?]", "pedido[observacoes]"
    end
  end
end

require 'rails_helper'

RSpec.describe "pedidos/edit", :type => :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :fornecedor => nil,
      :data => "MyString",
      :pedido => "MyText",
      :observacoes => "MyText"
    ))
  end

  it "renders the edit pedido form" do
    render

    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do

      assert_select "input#pedido_fornecedor_id[name=?]", "pedido[fornecedor_id]"

      assert_select "input#pedido_data[name=?]", "pedido[data]"

      assert_select "textarea#pedido_pedido[name=?]", "pedido[pedido]"

      assert_select "textarea#pedido_observacoes[name=?]", "pedido[observacoes]"
    end
  end
end

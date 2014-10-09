require 'rails_helper'

RSpec.describe "pedidos/index", :type => :view do
  before(:each) do
    assign(:pedidos, [
      Pedido.create!(
        :fornecedor => nil,
        :data => "Data",
        :pedido => "MyText",
        :observacoes => "MyText"
      ),
      Pedido.create!(
        :fornecedor => nil,
        :data => "Data",
        :pedido => "MyText",
        :observacoes => "MyText"
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

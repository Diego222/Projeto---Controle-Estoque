require 'rails_helper'

RSpec.describe "pedidos/show", :type => :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :fornecedor => nil,
      :data => "Data",
      :pedido => "MyText",
      :observacoes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Data/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

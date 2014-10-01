require 'rails_helper'

RSpec.describe "transportadoras/index", :type => :view do
  before(:each) do
    assign(:transportadoras, [
      Transportadora.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cidade => "Cidade",
        :estado => "Estado",
        :telefone => "Telefone",
        :cnpj => "Cnpj",
        :inscricao_estadual => "Inscricao_estadual"
      ),
      Transportadora.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cidade => "Cidade",
        :estado => "Estado",
        :telefone => "Telefone",
        :cnpj => "Cnpj",
        :inscricao_estadual => "Inscricao_estadual"
      )
    ])
  end

  it "renders a list of transportadoras" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Inscricao_estadual".to_s, :count => 2
  end
end

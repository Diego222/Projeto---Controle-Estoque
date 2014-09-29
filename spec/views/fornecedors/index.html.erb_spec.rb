require 'rails_helper'

RSpec.describe "fornecedors/index", :type => :view do
  before(:each) do
    assign(:fornecedors, [
      Fornecedor.create!(
        :empresa => "Empresa",
        :contato => "Contato",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :telefone => "Telefone",
        :fax => "Fax",
        :cnpj => "Cnpj",
        :inscricao_estadual => "Inscricao_estadual",
        :data_cadastro => "Data_cadastro",
        :email => "Email"
      ),
      Fornecedor.create!(
        :empresa => "Empresa",
        :contato => "Contato",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :telefone => "Telefone",
        :fax => "Fax",
        :cnpj => "Cnpj",
        :inscricao_estadual => "Inscricao_estadual",
        :data_cadastro => "Data_cadastro",
        :email => "Email"
      )
    ])
  end

  it "renders a list of fornecedors" do
    render
    assert_select "tr>td", :text => "Empresa".to_s, :count => 2
    assert_select "tr>td", :text => "Contato".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Inscricao_estadual".to_s, :count => 2
    assert_select "tr>td", :text => "Data_cadastro".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end

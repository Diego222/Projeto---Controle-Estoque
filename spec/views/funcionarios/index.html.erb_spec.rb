require 'rails_helper'

RSpec.describe "funcionarios/index", :type => :view do
  before(:each) do
    assign(:funcionarios, [
      Funcionario.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :telefone => "Telefone",
        :admissao => "Admissao",
        :salario => "9.99",
        :cpf => "Cpf",
        :identidade => "Identidade",
        :nascimento => "Nascimento",
        :cargo => "Cargo"
      ),
      Funcionario.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep",
        :telefone => "Telefone",
        :admissao => "Admissao",
        :salario => "9.99",
        :cpf => "Cpf",
        :identidade => "Identidade",
        :nascimento => "Nascimento",
        :cargo => "Cargo"
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Admissao".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Identidade".to_s, :count => 2
    assert_select "tr>td", :text => "Nascimento".to_s, :count => 2
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
  end
end

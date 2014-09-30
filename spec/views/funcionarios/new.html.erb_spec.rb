require 'rails_helper'

RSpec.describe "funcionarios/new", :type => :view do
  before(:each) do
    assign(:funcionario, Funcionario.new(
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :cep => "MyString",
      :telefone => "MyString",
      :admissao => "MyString",
      :salario => "9.99",
      :cpf => "MyString",
      :identidade => "MyString",
      :nascimento => "MyString",
      :cargo => "MyString"
    ))
  end

  it "renders new funcionario form" do
    render

    assert_select "form[action=?][method=?]", funcionarios_path, "post" do

      assert_select "input#funcionario_nome[name=?]", "funcionario[nome]"

      assert_select "input#funcionario_endereco[name=?]", "funcionario[endereco]"

      assert_select "input#funcionario_bairro[name=?]", "funcionario[bairro]"

      assert_select "input#funcionario_cidade[name=?]", "funcionario[cidade]"

      assert_select "input#funcionario_estado[name=?]", "funcionario[estado]"

      assert_select "input#funcionario_cep[name=?]", "funcionario[cep]"

      assert_select "input#funcionario_telefone[name=?]", "funcionario[telefone]"

      assert_select "input#funcionario_admissao[name=?]", "funcionario[admissao]"

      assert_select "input#funcionario_salario[name=?]", "funcionario[salario]"

      assert_select "input#funcionario_cpf[name=?]", "funcionario[cpf]"

      assert_select "input#funcionario_identidade[name=?]", "funcionario[identidade]"

      assert_select "input#funcionario_nascimento[name=?]", "funcionario[nascimento]"

      assert_select "input#funcionario_cargo[name=?]", "funcionario[cargo]"
    end
  end
end

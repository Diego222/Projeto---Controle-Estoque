require 'rails_helper'

RSpec.describe "funcionarios/show", :type => :view do
  before(:each) do
    @funcionario = assign(:funcionario, Funcionario.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Admissao/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Identidade/)
    expect(rendered).to match(/Nascimento/)
    expect(rendered).to match(/Cargo/)
  end
end

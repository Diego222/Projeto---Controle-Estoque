require 'rails_helper'

RSpec.describe "fornecedors/show", :type => :view do
  before(:each) do
    @fornecedor = assign(:fornecedor, Fornecedor.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Empresa/)
    expect(rendered).to match(/Contato/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Inscricao_estadual/)
    expect(rendered).to match(/Data_cadastro/)
    expect(rendered).to match(/Email/)
  end
end

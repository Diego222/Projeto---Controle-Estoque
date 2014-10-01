require 'rails_helper'

RSpec.describe "transportadoras/show", :type => :view do
  before(:each) do
    @transportadora = assign(:transportadora, Transportadora.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :cidade => "Cidade",
      :estado => "Estado",
      :telefone => "Telefone",
      :cnpj => "Cnpj",
      :inscricao_estadual => "Inscricao_estadual"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Inscricao_estadual/)
  end
end

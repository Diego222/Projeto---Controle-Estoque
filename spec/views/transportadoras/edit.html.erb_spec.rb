require 'rails_helper'

RSpec.describe "transportadoras/edit", :type => :view do
  before(:each) do
    @transportadora = assign(:transportadora, Transportadora.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :telefone => "MyString",
      :cnpj => "MyString",
      :inscricao_estadual => "MyString"
    ))
  end

  it "renders the edit transportadora form" do
    render

    assert_select "form[action=?][method=?]", transportadora_path(@transportadora), "post" do

      assert_select "input#transportadora_nome[name=?]", "transportadora[nome]"

      assert_select "input#transportadora_endereco[name=?]", "transportadora[endereco]"

      assert_select "input#transportadora_cidade[name=?]", "transportadora[cidade]"

      assert_select "input#transportadora_estado[name=?]", "transportadora[estado]"

      assert_select "input#transportadora_telefone[name=?]", "transportadora[telefone]"

      assert_select "input#transportadora_cnpj[name=?]", "transportadora[cnpj]"

      assert_select "input#transportadora_inscricao_estadual[name=?]", "transportadora[inscricao_estadual]"
    end
  end
end

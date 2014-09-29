require 'rails_helper'

RSpec.describe "fornecedors/edit", :type => :view do
  before(:each) do
    @fornecedor = assign(:fornecedor, Fornecedor.create!(
      :empresa => "MyString",
      :contato => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :cep => "MyString",
      :telefone => "MyString",
      :fax => "MyString",
      :cnpj => "MyString",
      :inscricao_estadual => "MyString",
      :data_cadastro => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedor_path(@fornecedor), "post" do

      assert_select "input#fornecedor_empresa[name=?]", "fornecedor[empresa]"

      assert_select "input#fornecedor_contato[name=?]", "fornecedor[contato]"

      assert_select "input#fornecedor_endereco[name=?]", "fornecedor[endereco]"

      assert_select "input#fornecedor_bairro[name=?]", "fornecedor[bairro]"

      assert_select "input#fornecedor_cidade[name=?]", "fornecedor[cidade]"

      assert_select "input#fornecedor_estado[name=?]", "fornecedor[estado]"

      assert_select "input#fornecedor_cep[name=?]", "fornecedor[cep]"

      assert_select "input#fornecedor_telefone[name=?]", "fornecedor[telefone]"

      assert_select "input#fornecedor_fax[name=?]", "fornecedor[fax]"

      assert_select "input#fornecedor_cnpj[name=?]", "fornecedor[cnpj]"

      assert_select "input#fornecedor_inscricao_estadual[name=?]", "fornecedor[inscricao_estadual]"

      assert_select "input#fornecedor_data_cadastro[name=?]", "fornecedor[data_cadastro]"

      assert_select "input#fornecedor_email[name=?]", "fornecedor[email]"
    end
  end
end

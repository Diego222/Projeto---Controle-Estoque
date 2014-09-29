class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :empresa
      t.string :contato
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :fax
      t.string :cnpj
      t.string :inscricao_estadual
      t.string :data_cadastro
      t.string :email

      t.timestamps
    end
  end
end

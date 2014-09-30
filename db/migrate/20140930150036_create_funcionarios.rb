class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :admissao
      t.decimal :salario
      t.string :cpf
      t.string :identidade
      t.string :nascimento
      t.string :cargo

      t.timestamps
    end
  end
end

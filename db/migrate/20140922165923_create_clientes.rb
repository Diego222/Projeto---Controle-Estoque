class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :identidade
      t.string :cpf
      t.date :nascimento
      t.string :tipo_cliente
      t.date :data_cadastro
      t.string :fisica
      t.string :juridica

      t.timestamps
    end
  end
end

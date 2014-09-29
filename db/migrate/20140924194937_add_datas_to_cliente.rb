class AddDatasToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :nascimento, :string
    add_column :clientes, :data_cadastro, :string
  end
end

class AddPrecosToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :preco_custo, :decimal
    add_column :produtos, :preco_venda, :decimal
  end
end

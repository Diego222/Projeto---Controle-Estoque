class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao_produto
      t.string :tipo
      t.references :fornecedor, index: true
      t.string :fabricante
      t.string :preco_custo
      t.string :preco_venda
      t.string :data_ultimo_reajuste

      t.timestamps
    end
  end
end

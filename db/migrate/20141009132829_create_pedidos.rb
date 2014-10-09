class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :fornecedor, index: true
      t.string :data
      t.text :pedido
      t.text :observacoes

      t.timestamps
    end
  end
end

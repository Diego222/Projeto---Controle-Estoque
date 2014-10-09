class AddQuantidadeToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :quantidade, :float
  end
end

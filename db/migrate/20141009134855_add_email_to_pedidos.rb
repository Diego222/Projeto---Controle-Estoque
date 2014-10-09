class AddEmailToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :email, :string
  end
end

json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :fornecedor_id, :data, :email, :pedido, :observacoes
  json.url pedido_url(pedido, format: :json)
end

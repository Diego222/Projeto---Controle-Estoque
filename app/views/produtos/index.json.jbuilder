json.array!(@produtos) do |produto|
  json.extract! produto, :id, :descricao_produto, :tipo, :fornecedor_id, :fabricante, :preco_custo, :preco_venda, :data_ultimo_reajuste
  json.url produto_url(produto, format: :json)
end

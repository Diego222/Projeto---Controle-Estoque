class Produto < ActiveRecord::Base
  belongs_to :fornecedor

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :descricao_produto, :tipo, :fornecedor, :quantidade, :fabricante, :preco_custo, :preco_venda,
	:data_ultimo_reajuste, :message => "Campo obrigatório"

	paginates_per 2

end

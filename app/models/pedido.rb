class Pedido < ActiveRecord::Base
  belongs_to :fornecedor

  validates_presence_of :data, :pedido, :message => "Campo obrigatório"
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{3,})\z/i, on: :create, :message => "Email inválido" }

  paginates_per 2
end

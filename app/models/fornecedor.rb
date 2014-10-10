class Fornecedor < ActiveRecord::Base

	has_many :produtos#, dependent: :destroy
	has_many :pedidos

	validates_presence_of :empresa, :contato, :endereco, :bairro, :cidade, :estado,
	:data_cadastro, :message => "Campo obrigatório"
	#validates_length_of :nome, :endereco, :bairro, :cidade, :in => 7..32, :message=> "Campo deve conter no mínimo 7 dígitos e no máximo 50"
	validates_length_of :empresa, :contato, :endereco, :bairro, :cidade, :maximum => 50, :message => "Limite de caracteres ultrapassado"
	
	#CEP
	validates_presence_of :cep, :message => "Campo obrigatório com 8 dígitos"
	#validates_size_of :cep, is: 10, :message => "Deve ter 10 dígitos"

	#TELEFONE
	validates_presence_of :telefone, is: 14, :message => "Campo obrigatório com 10 dígitos"

	#CNPJ
	validates_presence_of :cnpj, :message => "Campo obrigatório com 14 dígitos"
	#validates_size_of :cnpj, is: 14, :message => "Deve ter 18 dígitos"
	validates_uniqueness_of :cnpj, :email, :message => "Cnpj já cadastrado"

	#INCRIÇÃO_ESTADUAL
	validates_presence_of :inscricao_estadual, :message => "Campo obrigatório com 12 dígitos"
	#validates_size_of :identidade, is: 12, :message => "Deve ter 9 dígitos"
	validates_uniqueness_of :inscricao_estadual, :message => "Inscrição estadual já cadastrada"

	#Email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{3,})\z/i, on: :create, :message => "Email inválido" }
	

end

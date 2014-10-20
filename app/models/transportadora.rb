class Transportadora < ActiveRecord::Base

	validates_presence_of :nome, :endereco, :cidade, :estado, :message => "Campo obrigatório"

	#TELEFONE
	validates_presence_of :telefone, is: 14, :message => "Campo obrigatório com 10 dígitos"

	#CNPJ
	validates_presence_of :cnpj, :message => "Campo obrigatório com 14 dígitos"
	#validates_size_of :cnpj, is: 14, :message => "Deve ter 18 dígitos"
	validates_uniqueness_of :cnpj, :message => "Cnpj já cadastrado"

	#INCRIÇÃO_ESTADUAL
	validates_presence_of :inscricao_estadual, :message => "Campo obrigatório com 12 dígitos"
	#validates_size_of :identidade, is: 12, :message => "Deve ter 9 dígitos"
	validates_uniqueness_of :inscricao_estadual, :message => "Inscrição estadual já cadastrada"

	paginates_per 2
end

class Funcionario < ActiveRecord::Base

	validates_presence_of :nome, :endereco, :bairro, :cidade, :estado, :nascimento,
	:admissao, :salario, :cargo, :message => "Campo obrigatório"
	#validates_length_of :nome, :endereco, :bairro, :cidade, :in => 7..32, :message=> "Campo deve conter no mínimo 7 dígitos e no máximo 50"
	validates_length_of :nome, :endereco, :bairro, :cidade, :maximum => 50, :message => "Limite de caracteres ultrapassado"
	
	#CEP
	validates_presence_of :cep, :message => "Campo obrigatório com 8 dígitos"
	#validates_size_of :cep, is: 10, :message => "Deve ter 10 dígitos"

	#TELEFONE
	validates_presence_of :telefone, is: 14, :message => "Campo obrigatório com 10 dígitos"

	#IDENTIDADE
	validates_presence_of :identidade, :message => "Campo obrigatório com 9 dígitos"
	#validates_size_of :identidade, is: 12, :message => "Deve ter 9 dígitos"
	validates_uniqueness_of :identidade, :message => "Identidade já cadastrada"

	#CPF
	validates_presence_of :cpf, :message => "Campo obrigatório com 11 dígitos"
	#validates_size_of :cpf, is: 14, :message => "Deve ter 11 dígitos"
	validates_uniqueness_of :cpf, :message => "Cpf já cadastrado"

end

# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141002202944) do

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "telefone"
    t.string   "identidade"
    t.string   "cpf"
    t.string   "tipo_cliente"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nascimento"
    t.string   "data_cadastro"
  end

  create_table "fornecedors", force: true do |t|
    t.string   "empresa"
    t.string   "contato"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "telefone"
    t.string   "fax"
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.string   "data_cadastro"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "telefone"
    t.string   "admissao"
    t.decimal  "salario",    precision: 10, scale: 0
    t.string   "cpf"
    t.string   "identidade"
    t.string   "nascimento"
    t.string   "cargo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "descricao_produto"
    t.string   "tipo"
    t.integer  "fornecedor_id"
    t.string   "fabricante"
    t.string   "preco_custo"
    t.string   "preco_venda"
    t.string   "data_ultimo_reajuste"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "produtos", ["fornecedor_id"], name: "index_produtos_on_fornecedor_id", using: :btree

  create_table "transportadoras", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone"
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

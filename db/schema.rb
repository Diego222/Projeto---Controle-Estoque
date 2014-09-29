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

ActiveRecord::Schema.define(version: 20140929184537) do

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

end

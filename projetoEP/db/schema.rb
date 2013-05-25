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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130523021135) do

  create_table "aeroporto", :id => false, :force => true do |t|
    t.integer "cod_aeroporto",               :null => false
    t.integer "cod_cidade",                  :null => false
    t.string  "nome",          :limit => 20
    t.string  "sigla",         :limit => 3
    t.string  "descricao_en",  :limit => 20
    t.string  "descricao_es",  :limit => 20
    t.string  "descricao_pt",  :limit => 20
    t.string  "endereço",      :limit => 20
    t.string  "numero",        :limit => 10
    t.string  "cep",           :limit => 9
    t.string  "telefone",      :limit => 20
  end

  create_table "cidade1", :id => false, :force => true do |t|
    t.integer "cod_cidade",                 :null => false
    t.string  "nome",         :limit => 20
    t.string  "descricao_en", :limit => 20
    t.string  "descricao_es", :limit => 20
    t.string  "descricao_pt", :limit => 20
    t.integer "codigo_area"
  end

  create_table "cidades", :force => true do |t|
    t.string   "Nome"
    t.string   "Estado"
    t.string   "Sigla"
    t.integer  "Codigo_de_area"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "estadio", :id => false, :force => true do |t|
    t.integer "cod_estadio",                :null => false
    t.string  "nome",         :limit => 20
    t.integer "capacidade"
    t.string  "descricao_en", :limit => 20
    t.string  "descricao_es", :limit => 20
    t.string  "descricao_pt", :limit => 20
    t.integer "cod_cidade",                 :null => false
  end

  create_table "jogador", :id => false, :force => true do |t|
    t.integer "cod_jogador",               :null => false
    t.string  "nome",        :limit => 20
    t.integer "idade"
    t.string  "posicao",     :limit => 20
    t.integer "cod_selecao",               :null => false
  end

  create_table "juiz1", :id => false, :force => true do |t|
    t.integer "cod_juiz",                    :null => false
    t.string  "nome",          :limit => 20
    t.integer "idade"
    t.string  "nacionalidade", :limit => 20
  end

  create_table "juizs", :force => true do |t|
    t.string   "Nome"
    t.integer  "Idade"
    t.string   "Nacionalidade"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "partida", :id => false, :force => true do |t|
    t.integer "cod_partida",                 :null => false
    t.string  "fase",          :limit => 20
    t.string  "resultado",     :limit => 20
    t.string  "data",          :limit => 10
    t.string  "horario",       :limit => 5
    t.integer "cod_estadio",                 :null => false
    t.integer "cod_selecao_1",               :null => false
    t.integer "cod_selecao_2",               :null => false
    t.integer "cod_juiz",                    :null => false
  end

  create_table "selecao", :id => false, :force => true do |t|
    t.integer "cod_selecao",                   :null => false
    t.string  "nome",            :limit => 20
    t.string  "descricao_en",    :limit => 20
    t.string  "descricao_es",    :limit => 20
    t.string  "descricao_pt",    :limit => 20
    t.integer "pontos"
    t.integer "vitorias"
    t.integer "empates"
    t.integer "derrotas"
    t.integer "numero_gols"
    t.integer "numero_grupo",                  :null => false
    t.integer "fase_eliminacao"
  end

  create_table "selecaos", :force => true do |t|
    t.string   "Pais"
    t.integer  "Pontos"
    t.integer  "Vitorias"
    t.integer  "Derrotas"
    t.integer  "Empates"
    t.integer  "Numero_de_gols"
    t.integer  "Grupo"
    t.integer  "Fase_de_eliminacao"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "published"
    t.text     "desc"
    t.date     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "Nome"
    t.string   "Senha"
    t.string   "Idioma"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

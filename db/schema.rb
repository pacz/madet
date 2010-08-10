# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090829010336) do

  create_table "abonos", :force => true do |t|
    t.date    "fch",                                       :null => false
    t.integer "concepto_id",                               :null => false
    t.integer "valor",                                     :null => false
    t.date    "fecini",                                    :null => false
    t.date    "fecfin",                                    :null => false
    t.string  "nota",        :limit => 45, :default => "", :null => false
    t.integer "persona_id",                                :null => false
    t.boolean "pagar"
  end

  create_table "aportes", :force => true do |t|
    t.integer  "persona_id"
    t.datetime "fch_registro"
    t.integer  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecini"
    t.date     "fecfin"
    t.integer  "pago_id"
    t.string   "nota"
    t.boolean  "pagar"
  end

  add_index "aportes", ["id"], :name => "id", :unique => true

  create_table "asistentes", :force => true do |t|
    t.integer  "evento_id"
    t.string   "td",             :limit => 3
    t.string   "identificacion", :limit => 20
    t.string   "nombre",         :limit => 50
    t.string   "telefono",       :limit => 20
    t.string   "celular",        :limit => 20
    t.string   "mail",           :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beneficiarios", :force => true do |t|
    t.integer  "persona_id"
    t.string   "td",             :limit => 3
    t.string   "identificacion", :limit => 20
    t.string   "nombre",         :limit => 40
    t.string   "pri_apellido",   :limit => 40
    t.string   "seg_apellido",   :limit => 40
    t.datetime "fch_ncto"
    t.string   "telefono",       :limit => 20
    t.string   "email",          :limit => 80
    t.string   "profesion",      :limit => 80
    t.string   "porauxilio",     :limit => 20
    t.integer  "parentesco_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conceptos", :force => true do |t|
    t.integer  "conceptos_tipo_id", :limit => 10, :precision => 10, :scale => 0, :null => false
    t.string   "nombre",            :limit => 80
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "valor"
    t.integer  "valor_nasociado"
  end

  create_table "conceptos_tipos", :force => true do |t|
    t.string   "valor",       :limit => 45, :default => "", :null => false
    t.string   "descripcion", :limit => 45, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detprestamos", :force => true do |t|
    t.integer  "prestamo_id"
    t.integer  "persona_id"
    t.date     "fecha"
    t.integer  "valor_cuota"
    t.integer  "valor_interes"
    t.integer  "valor_interes_mora"
    t.integer  "pago_id"
    t.integer  "nro_recibo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nro_cuota",          :limit => 1
    t.integer  "capital"
    t.integer  "saldo"
    t.boolean  "pagar"
  end

  create_table "documentos", :force => true do |t|
    t.string  "nombre",   :limit => 30, :default => "", :null => false
    t.string  "sigla",    :limit => 3,  :default => "", :null => false
    t.boolean "generado"
  end

  create_table "egresos", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "empresa_id"
    t.integer  "concepto_id"
    t.float    "valor"
    t.date     "fecha"
    t.string   "nro_cheque"
    t.string   "banco"
    t.integer  "pago_id"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prestamo_id"
  end

  create_table "empresas", :force => true do |t|
    t.string   "razon_social"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eps", :force => true do |t|
    t.string   "nombre",     :limit => 80
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "eps", ["id"], :name => "id", :unique => true

  create_table "eventos", :force => true do |t|
    t.string   "nombre",          :limit => 80
    t.datetime "fch"
    t.string   "lugar",           :limit => 80
    t.string   "salida",          :limit => 80
    t.integer  "vr_asociado"
    t.integer  "vr_familiar"
    t.integer  "vr_invitado"
    t.datetime "fch_inscripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estado",          :limit => 1
  end

  create_table "fondos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formas", :force => true do |t|
    t.string   "nombre",     :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formas_pagos", :force => true do |t|
    t.string "nombre", :limit => 60
  end

  create_table "funerarias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimientos", :force => true do |t|
    t.integer "persona_id",     :null => false
    t.integer "concepto_id",    :null => false
    t.float   "valor",          :null => false
    t.date    "fecha",          :null => false
    t.integer "afecte_id",      :null => false
    t.integer "pago_id",        :null => false
    t.integer "tipo_operacion", :null => false
  end

  create_table "municipios", :force => true do |t|
    t.integer  "pai_id"
    t.integer  "dpt_id"
    t.integer  "mpo_id"
    t.string   "nombre_pais"
    t.string   "nombre_dpto"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagos", :force => true do |t|
    t.date    "fecha",          :null => false
    t.integer "documento_id",   :null => false
    t.integer "formas_pago_id", :null => false
  end

  create_table "parametros", :force => true do |t|
    t.string   "nombre",     :limit => 60, :default => "", :null => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.float    "valor",                                    :null => false
  end

  create_table "parentescos", :force => true do |t|
    t.string   "nombre",     :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "td",             :limit => 3
    t.string   "identificacion", :limit => 20
    t.string   "nombre",         :limit => 40
    t.string   "pri_apellido",   :limit => 40
    t.string   "seg_apellido",   :limit => 40
    t.date     "fch_ncto"
    t.integer  "municipio_id"
    t.string   "direccion",      :limit => 60
    t.string   "telefono1",      :limit => 20
    t.string   "telefono2",      :limit => 20
    t.string   "celular",        :limit => 20
    t.string   "email",          :limit => 80
    t.string   "ecivil",         :limit => 2
    t.string   "hijos",          :limit => 2
    t.integer  "fondo_id"
    t.float    "salario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ep_id"
    t.integer  "funeraria_id"
    t.boolean  "asociado"
    t.integer  "estado",         :limit => 1
    t.string   "acta_ingreso",   :limit => 20
    t.string   "acta_retiro",    :limit => 20
    t.date     "fch_ingreso"
    t.date     "fch_retiro"
  end

  create_table "prestamos", :force => true do |t|
    t.date     "fch_solicitud"
    t.integer  "persona_id"
    t.integer  "total"
    t.integer  "plazo"
    t.integer  "forma_id"
    t.date     "fch_aprobado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "saldo"
    t.float    "parametro_interes_mora"
    t.float    "parametro_interes_taza"
    t.integer  "estado",                 :limit => 1,  :default => 0
    t.string   "acta",                   :limit => 10
  end

  create_table "servicios", :force => true do |t|
    t.string  "descripcion",     :limit => 100, :default => "", :null => false
    t.integer "valor"
    t.integer "valor_nasociado"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :default => "", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "tipos", :force => true do |t|
    t.string "nombre", :limit => 60
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end

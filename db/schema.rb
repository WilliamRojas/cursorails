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

ActiveRecord::Schema.define(version: 20140624012024) do

  create_table "clientes", force: true do |t|
    t.string   "cedula"
    t.string   "nombre"
    t.date     "fch_ncto"
    t.string   "mail"
    t.boolean  "genero"
    t.string   "celular"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "nit"
    t.string   "razon_social"
    t.string   "gerente"
    t.string   "direccion"
    t.string   "email"
    t.string   "telefono"
    t.date     "fh_creacion"
    t.integer  "nro_trabajadores"
    t.integer  "municipio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empresas", ["municipio_id"], name: "index_empresas_on_municipio_id"

  create_table "municipios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

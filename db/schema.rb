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

ActiveRecord::Schema.define(:version => 20120616032603) do

  create_table "instrumentos", :force => true do |t|
    t.integer  "instrumento_id"
    t.string   "nombre"
    t.string   "marca"
    t.string   "nro_serie"
    t.text     "observaciones"
    t.text     "detalles"
    t.text     "relacionados"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "libros", :force => true do |t|
    t.integer  "libro_id"
    t.string   "nombre"
    t.string   "autor"
    t.string   "editorial"
    t.string   "ubicacion"
    t.text     "observaciones"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "personas", :force => true do |t|
    t.integer  "persona_id"
    t.string   "apellido"
    t.string   "nombre"
    t.string   "dni"
    t.integer  "legajo"
    t.date     "nacimiento"
    t.string   "email"
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "celular"
    t.text     "observacion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "prestamo_instrumentos", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "instrumento_id"
    t.integer  "responsable_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "prestamo_libros", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "instrumento_id"
    t.integer  "responsable_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.integer  "cod"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.integer  "legajo"
    t.date     "nacim"
    t.string   "mail"
    t.string   "direccion"
    t.integer  "telefon"
    t.integer  "celular"
    t.text     "observacion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end

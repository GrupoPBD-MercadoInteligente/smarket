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

ActiveRecord::Schema.define(version: 20140617182905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: true do |t|
    t.integer  "auditoria_id"
    t.string   "auditoria_usuario"
    t.string   "auditoria_tabla_mod"
    t.string   "auditoria_operacion"
    t.date     "auditoria_fecha"
    t.string   "auditoria_attr_mod"
    t.string   "auditoria_antes"
    t.string   "auditoria_despues"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "auditoria", ["auditoria_id"], name: "index_auditoria_on_auditoria_id", using: :btree

  create_table "auditorium", id: false, force: true do |t|
    t.integer "auditoria_id",                    null: false
    t.string  "auditoria_usuario",   limit: 128
    t.string  "auditoria_tabla_mod", limit: 128
    t.string  "auditoria_operacion", limit: 64
    t.date    "auditoria_fecha"
    t.string  "auditoria_attr_mod",  limit: 64
    t.string  "auditoria_antes",     limit: 128
    t.string  "auditoria_despues",   limit: 128
  end

  add_index "auditorium", ["auditoria_id"], name: "controlauditoria_pk", unique: true, using: :btree

  create_table "clase_unit", id: false, force: true do |t|
    t.integer "clase_id",                 null: false
    t.integer "cla_clase_id"
    t.string  "clase_nombre", limit: 256
  end

  add_index "clase_unit", ["cla_clase_id"], name: "relationship_50_fk", using: :btree
  add_index "clase_unit", ["clase_id"], name: "clase_pk", unique: true, using: :btree

  create_table "clase_units", force: true do |t|
    t.integer  "clase_id"
    t.integer  "cla_clase_id"
    t.string   "clase_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clase_units", ["cla_clase_id"], name: "index_clase_units_on_cla_clase_id", using: :btree
  add_index "clase_units", ["clase_id"], name: "index_clase_units_on_clase_id", using: :btree

  create_table "comision", id: false, force: true do |t|
    t.integer "comision_id",    null: false
    t.integer "transaccion_id", null: false
    t.integer "comision_monto"
  end

  add_index "comision", ["comision_id"], name: "comision_pk", unique: true, using: :btree
  add_index "comision", ["transaccion_id"], name: "relationship_36_fk", using: :btree

  create_table "comisions", force: true do |t|
    t.integer  "comision_id"
    t.integer  "transaccion_id"
    t.integer  "comision_monto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comisions", ["comision_id"], name: "index_comisions_on_comision_id", using: :btree
  add_index "comisions", ["transaccion_id"], name: "index_comisions_on_transaccion_id", using: :btree

  create_table "compra_remate", id: false, force: true do |t|
    t.integer "tipo_trans_id",       null: false
    t.integer "comprasubasta_id",    null: false
    t.integer "usuario_id",          null: false
    t.integer "prod_sub_id",         null: false
    t.integer "usu_usuario_id",      null: false
    t.date    "comprasubasta_fecha"
  end

  add_index "compra_remate", ["comprasubasta_id"], name: "comprasubasta_pk", unique: true, using: :btree
  add_index "compra_remate", ["prod_sub_id"], name: "relationship_39_fk", using: :btree
  add_index "compra_remate", ["tipo_trans_id"], name: "inheritance_5_fk", using: :btree
  add_index "compra_remate", ["usu_usuario_id"], name: "relationship_38_fk", using: :btree
  add_index "compra_remate", ["usuario_id"], name: "relationship_37_fk", using: :btree

  create_table "compra_remates", force: true do |t|
    t.integer  "tipo_trans_id"
    t.integer  "comprasubasta_id"
    t.integer  "usuario_id"
    t.integer  "prod_sub_id"
    t.integer  "usu_usuario_id"
    t.date     "comprasubasta_fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_remates", ["comprasubasta_id"], name: "index_compra_remates_on_comprasubasta_id", using: :btree
  add_index "compra_remates", ["prod_sub_id"], name: "index_compra_remates_on_prod_sub_id", using: :btree
  add_index "compra_remates", ["tipo_trans_id"], name: "index_compra_remates_on_tipo_trans_id", using: :btree
  add_index "compra_remates", ["usu_usuario_id"], name: "index_compra_remates_on_usu_usuario_id", using: :btree
  add_index "compra_remates", ["usuario_id"], name: "index_compra_remates_on_usuario_id", using: :btree

  create_table "compra_venta_especial", id: false, force: true do |t|
    t.integer "tipo_trans_id",        null: false
    t.integer "compraventa_id",       null: false
    t.integer "usuario_id",           null: false
    t.integer "prod_of_nec_id",       null: false
    t.integer "usu_usuario_id",       null: false
    t.date    "compraventanor_fecha"
  end

  add_index "compra_venta_especial", ["compraventa_id"], name: "compra_venta_especial_pk", unique: true, using: :btree
  add_index "compra_venta_especial", ["prod_of_nec_id"], name: "relationship_46_fk", using: :btree
  add_index "compra_venta_especial", ["tipo_trans_id"], name: "inheritance_6_fk", using: :btree
  add_index "compra_venta_especial", ["usu_usuario_id"], name: "relationship_27_fk", using: :btree
  add_index "compra_venta_especial", ["usuario_id"], name: "relationship_20_fk", using: :btree

  create_table "compra_venta_especials", force: true do |t|
    t.integer  "tipo_trans_id"
    t.integer  "compraventa_id"
    t.integer  "usuario_id"
    t.integer  "prod_of_nec_id"
    t.integer  "usu_usuario_id"
    t.date     "compraventanor_fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_venta_especials", ["compraventa_id"], name: "index_compra_venta_especials_on_compraventa_id", using: :btree
  add_index "compra_venta_especials", ["prod_of_nec_id"], name: "index_compra_venta_especials_on_prod_of_nec_id", using: :btree
  add_index "compra_venta_especials", ["tipo_trans_id"], name: "index_compra_venta_especials_on_tipo_trans_id", using: :btree
  add_index "compra_venta_especials", ["usu_usuario_id"], name: "index_compra_venta_especials_on_usu_usuario_id", using: :btree
  add_index "compra_venta_especials", ["usuario_id"], name: "index_compra_venta_especials_on_usuario_id", using: :btree

  create_table "compra_venta_normal", id: false, force: true do |t|
    t.integer "tipo_trans_id",        null: false
    t.integer "compraventa_id2",      null: false
    t.integer "usuario_id",           null: false
    t.integer "usu_usuario_id",       null: false
    t.integer "producto_of_id",       null: false
    t.date    "compraventanor_fecha"
  end

  add_index "compra_venta_normal", ["compraventa_id2"], name: "compra_venta_normal_pk", unique: true, using: :btree
  add_index "compra_venta_normal", ["producto_of_id"], name: "relationship_30_fk", using: :btree
  add_index "compra_venta_normal", ["tipo_trans_id"], name: "inheritance_7_fk", using: :btree
  add_index "compra_venta_normal", ["usu_usuario_id"], name: "relationship_32_fk", using: :btree
  add_index "compra_venta_normal", ["usuario_id"], name: "relationship_31_fk", using: :btree

  create_table "compra_venta_normals", force: true do |t|
    t.integer  "tipo_trans_id"
    t.integer  "compraventa_id2"
    t.integer  "usuario_id"
    t.integer  "usu_usuario_id"
    t.integer  "producto_of_id"
    t.date     "compraventanor_fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_venta_normals", ["producto_of_id"], name: "index_compra_venta_normals_on_producto_of_id", using: :btree
  add_index "compra_venta_normals", ["tipo_trans_id"], name: "index_compra_venta_normals_on_tipo_trans_id", using: :btree
  add_index "compra_venta_normals", ["usu_usuario_id"], name: "index_compra_venta_normals_on_usu_usuario_id", using: :btree
  add_index "compra_venta_normals", ["usuario_id"], name: "index_compra_venta_normals_on_usuario_id", using: :btree

  create_table "comuna", id: false, force: true do |t|
    t.integer "comuna_id",                 null: false
    t.integer "provincia_id",              null: false
    t.string  "comuna_nombre", limit: 128
  end

  add_index "comuna", ["comuna_id"], name: "comuna_pk", unique: true, using: :btree
  add_index "comuna", ["provincia_id"], name: "relationship_35_fk", using: :btree

  create_table "comunas", force: true do |t|
    t.integer  "comuna_id"
    t.integer  "provincia_id"
    t.string   "comuna_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comunas", ["comuna_id"], name: "index_comunas_on_comuna_id", using: :btree
  add_index "comunas", ["provincia_id"], name: "index_comunas_on_provincia_id", using: :btree

  create_table "condicion", id: false, force: true do |t|
    t.integer "condicion_id",                  null: false
    t.integer "tipo_trans_id",                 null: false
    t.float   "condicion_porcentaje_comision"
  end

  add_index "condicion", ["condicion_id"], name: "condicion_pk", unique: true, using: :btree
  add_index "condicion", ["tipo_trans_id"], name: "relationship_41_fk", using: :btree

  create_table "condicions", force: true do |t|
    t.integer  "condicion_id"
    t.integer  "tipo_trans_id"
    t.float    "condicion_porcentaje_comision"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "condicions", ["condicion_id"], name: "index_condicions_on_condicion_id", using: :btree
  add_index "condicions", ["tipo_trans_id"], name: "index_condicions_on_tipo_trans_id", using: :btree

  create_table "est_prod_of_nec", id: false, force: true do |t|
    t.integer "estado_prod_of_necesidad_id",                 null: false
    t.string  "estado_prod_of_necesidad_nombre", limit: 256
  end

  add_index "est_prod_of_nec", ["estado_prod_of_necesidad_id"], name: "estado_producto_ofertado_para_necesidad_pk", unique: true, using: :btree

  create_table "est_prod_of_necs", force: true do |t|
    t.integer  "estado_prod_of_necesidad_id"
    t.string   "estado_prod_of_necesidad_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "est_prod_of_necs", ["estado_prod_of_necesidad_id"], name: "index_est_prod_of_necs_on_estado_prod_of_necesidad_id", using: :btree

  create_table "estado_notificacion", id: false, force: true do |t|
    t.integer "estado_not_id",                 null: false
    t.string  "estado_not_nombre", limit: 128
  end

  add_index "estado_notificacion", ["estado_not_id"], name: "estado_notificacion_pk", unique: true, using: :btree

  create_table "estado_notificacions", force: true do |t|
    t.integer  "estado_not_id"
    t.string   "estado_not_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estado_notificacions", ["estado_not_id"], name: "index_estado_notificacions_on_estado_not_id", using: :btree

  create_table "estado_remate", id: false, force: true do |t|
    t.integer "estado_subasta_id",                 null: false
    t.string  "estado_subasta_nombre", limit: 256
  end

  add_index "estado_remate", ["estado_subasta_id"], name: "estado_subasta_pk", unique: true, using: :btree

  create_table "estado_remates", force: true do |t|
    t.integer  "estado_subasta_id"
    t.string   "estado_subasta_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estado_remates", ["estado_subasta_id"], name: "index_estado_remates_on_estado_subasta_id", using: :btree

  create_table "ganancia_liquida", id: false, force: true do |t|
    t.integer "ganancia_liquida_id",    null: false
    t.integer "transaccion_id",         null: false
    t.integer "ganancia_liquida_monto"
  end

  add_index "ganancia_liquida", ["ganancia_liquida_id"], name: "ganancia_liquida_pk", unique: true, using: :btree
  add_index "ganancia_liquida", ["transaccion_id"], name: "relationship_42_fk", using: :btree

  create_table "ganancia_liquidas", force: true do |t|
    t.integer  "ganancia_liquida_id"
    t.integer  "transaccion_id"
    t.integer  "ganancia_liquida_monto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ganancia_liquidas", ["ganancia_liquida_id"], name: "index_ganancia_liquidas_on_ganancia_liquida_id", using: :btree
  add_index "ganancia_liquidas", ["transaccion_id"], name: "index_ganancia_liquidas_on_transaccion_id", using: :btree

  create_table "notificacion", id: false, force: true do |t|
    t.integer "notificacion_id",                 null: false
    t.integer "usuario_id",                      null: false
    t.integer "estado_not_id",                   null: false
    t.string  "notificacio_titulo", limit: 128
    t.string  "notificacion_texto", limit: 1024
  end

  add_index "notificacion", ["estado_not_id"], name: "relationship_47_fk", using: :btree
  add_index "notificacion", ["notificacion_id"], name: "notificacion_pk", unique: true, using: :btree
  add_index "notificacion", ["usuario_id"], name: "relationship_45_fk", using: :btree

  create_table "notificacions", force: true do |t|
    t.integer  "notificacion_id"
    t.integer  "usuario_id"
    t.integer  "estado_not_id"
    t.string   "notificacio_titulo"
    t.string   "notificacion_texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notificacions", ["estado_not_id"], name: "index_notificacions_on_estado_not_id", using: :btree
  add_index "notificacions", ["notificacion_id"], name: "index_notificacions_on_notificacion_id", using: :btree
  add_index "notificacions", ["usuario_id"], name: "index_notificacions_on_usuario_id", using: :btree

  create_table "prod_of_nec", id: false, force: true do |t|
    t.integer "producto_id",                   null: false
    t.integer "prod_of_nec_id",                null: false
    t.integer "usuario_id",                    null: false
    t.integer "estado_prod_of_necesidad_id",   null: false
    t.integer "prod_nec_id",                   null: false
    t.integer "prod_of_nec_cantidad"
    t.integer "prod_of_nec_precio_unitario"
    t.date    "prod_of_nec_fecha_publicacion"
  end

  add_index "prod_of_nec", ["estado_prod_of_necesidad_id"], name: "relationship_54_fk", using: :btree
  add_index "prod_of_nec", ["prod_nec_id"], name: "relationship_40_fk", using: :btree
  add_index "prod_of_nec", ["prod_of_nec_id"], name: "producto_ofertado_para_necesidad_pk", unique: true, using: :btree
  add_index "prod_of_nec", ["producto_id"], name: "inheritance_3_fk", using: :btree
  add_index "prod_of_nec", ["usuario_id"], name: "relationship_52_fk", using: :btree

  create_table "prod_of_necs", force: true do |t|
    t.integer  "producto_id"
    t.integer  "prod_of_nec_id"
    t.integer  "usuario_id"
    t.integer  "estado_prod_of_necesidad_id"
    t.integer  "prod_nec_id"
    t.integer  "prod_of_nec_cantidad"
    t.integer  "prod_of_nec_precio_unitario"
    t.date     "prod_of_nec_fecha_publicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prod_of_necs", ["estado_prod_of_necesidad_id"], name: "index_prod_of_necs_on_estado_prod_of_necesidad_id", using: :btree
  add_index "prod_of_necs", ["prod_nec_id"], name: "index_prod_of_necs_on_prod_nec_id", using: :btree
  add_index "prod_of_necs", ["prod_of_nec_id"], name: "index_prod_of_necs_on_prod_of_nec_id", using: :btree
  add_index "prod_of_necs", ["producto_id"], name: "index_prod_of_necs_on_producto_id", using: :btree
  add_index "prod_of_necs", ["usuario_id"], name: "index_prod_of_necs_on_usuario_id", using: :btree

  create_table "producto", id: false, force: true do |t|
    t.integer "producto_id",                  null: false
    t.integer "clase_id"
    t.string  "producto_nombre", limit: 1024
  end

  add_index "producto", ["clase_id"], name: "relationship_14_fk", using: :btree
  add_index "producto", ["producto_id"], name: "producto_pk", unique: true, using: :btree

  create_table "producto_necesitado", id: false, force: true do |t|
    t.integer "producto_id",                null: false
    t.integer "prod_nec_id",                null: false
    t.integer "usuario_id",                 null: false
    t.integer "prod_nec_cantidad"
    t.integer "prod_nec_preciotope"
    t.date    "prod_nec_fecha_publicacion"
  end

  add_index "producto_necesitado", ["prod_nec_id"], name: "producto_necesitado_pk", unique: true, using: :btree
  add_index "producto_necesitado", ["producto_id"], name: "inheritance_1_fk", using: :btree
  add_index "producto_necesitado", ["usuario_id"], name: "relationship_43_fk", using: :btree

  create_table "producto_necesitados", force: true do |t|
    t.integer  "producto_id"
    t.integer  "prod_nec_id"
    t.integer  "usuario_id"
    t.integer  "prod_nec_cantidad"
    t.integer  "prod_nec_preciotope"
    t.date     "prod_nec_fecha_publicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "producto_necesitados", ["prod_nec_id"], name: "index_producto_necesitados_on_prod_nec_id", using: :btree
  add_index "producto_necesitados", ["producto_id"], name: "index_producto_necesitados_on_producto_id", using: :btree
  add_index "producto_necesitados", ["usuario_id"], name: "index_producto_necesitados_on_usuario_id", using: :btree

  create_table "producto_ofertado", id: false, force: true do |t|
    t.integer "producto_id",                   null: false
    t.integer "producto_of_id",                null: false
    t.integer "usuario_id",                    null: false
    t.integer "producto_of_cantidad"
    t.integer "producto_of_precio_unitario"
    t.date    "producto_of_fecha_publicacion"
  end

  add_index "producto_ofertado", ["producto_id"], name: "inheritance_4_fk", using: :btree
  add_index "producto_ofertado", ["producto_of_id"], name: "producto_ofertado_pk", unique: true, using: :btree
  add_index "producto_ofertado", ["usuario_id"], name: "relationship_44_fk", using: :btree

  create_table "producto_ofertados", force: true do |t|
    t.integer  "producto_id"
    t.integer  "producto_of_id"
    t.integer  "usuario_id"
    t.integer  "producto_of_cantidad"
    t.integer  "producto_of_precio_unitario"
    t.date     "producto_of_fecha_publicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "producto_ofertados", ["producto_id"], name: "index_producto_ofertados_on_producto_id", using: :btree
  add_index "producto_ofertados", ["producto_of_id"], name: "index_producto_ofertados_on_producto_of_id", using: :btree
  add_index "producto_ofertados", ["usuario_id"], name: "index_producto_ofertados_on_usuario_id", using: :btree

  create_table "producto_rematado", id: false, force: true do |t|
    t.integer "producto_id",              null: false
    t.integer "prod_sub_id",              null: false
    t.integer "prod_sub_cantidad"
    t.integer "prod_sub_precio_unitario"
  end

  add_index "producto_rematado", ["prod_sub_id"], name: "producto_subastado_pk", unique: true, using: :btree
  add_index "producto_rematado", ["producto_id"], name: "inheritance_2_fk", using: :btree

  create_table "producto_rematados", force: true do |t|
    t.integer  "producto_id"
    t.integer  "prod_sub_id"
    t.integer  "prod_sub_cantidad"
    t.integer  "prod_sub_precio_unitario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "producto_rematados", ["prod_sub_id"], name: "index_producto_rematados_on_prod_sub_id", using: :btree
  add_index "producto_rematados", ["producto_id"], name: "index_producto_rematados_on_producto_id", using: :btree

  create_table "productos", force: true do |t|
    t.integer  "producto_id"
    t.integer  "clase_id"
    t.string   "producto_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productos", ["clase_id"], name: "index_productos_on_clase_id", using: :btree
  add_index "productos", ["producto_id"], name: "index_productos_on_producto_id", using: :btree

  create_table "propiedad", id: false, force: true do |t|
    t.integer "propiedad_id",                  null: false
    t.string  "propiedad_nombre", limit: 1024
  end

  add_index "propiedad", ["propiedad_id"], name: "propiedad_pk", unique: true, using: :btree

  create_table "propiedadclase", id: false, force: true do |t|
    t.integer "propiedad_id", null: false
    t.integer "clase_id",     null: false
  end

  add_index "propiedadclase", ["clase_id"], name: "relationship_17_fk", using: :btree
  add_index "propiedadclase", ["propiedad_id"], name: "relationship_18_fk", using: :btree

  create_table "propiedadclases", force: true do |t|
    t.integer  "propiedad_id"
    t.integer  "clase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "propiedadclases", ["clase_id"], name: "index_propiedadclases_on_clase_id", using: :btree
  add_index "propiedadclases", ["propiedad_id"], name: "index_propiedadclases_on_propiedad_id", using: :btree

  create_table "propiedads", force: true do |t|
    t.integer  "propiedad_id"
    t.string   "propiedad_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "propiedads", ["propiedad_id"], name: "index_propiedads_on_propiedad_id", using: :btree

  create_table "provincia_unit", id: false, force: true do |t|
    t.integer "provincia_id",                 null: false
    t.integer "region_id",                    null: false
    t.string  "provincia_nombre", limit: 128
  end

  add_index "provincia_unit", ["provincia_id"], name: "provincia_pk", unique: true, using: :btree
  add_index "provincia_unit", ["region_id"], name: "relationship_49_fk", using: :btree

  create_table "provincia_units", force: true do |t|
    t.integer  "provincia_id"
    t.integer  "region_id"
    t.string   "provincia_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provincia_units", ["provincia_id"], name: "index_provincia_units_on_provincia_id", using: :btree
  add_index "provincia_units", ["region_id"], name: "index_provincia_units_on_region_id", using: :btree

  create_table "puja", id: false, force: true do |t|
    t.integer "puja_id",          null: false
    t.integer "sub_id",           null: false
    t.integer "usuario_id",       null: false
    t.integer "puja_valor"
    t.integer "puja_correlativo"
  end

  add_index "puja", ["puja_id"], name: "puja_pk", unique: true, using: :btree
  add_index "puja", ["sub_id"], name: "relationship_48_fk", using: :btree
  add_index "puja", ["usuario_id"], name: "relationship_4_fk", using: :btree

  create_table "pujas", force: true do |t|
    t.integer  "puja_id"
    t.integer  "sub_id"
    t.integer  "usuario_id"
    t.integer  "puja_valor"
    t.integer  "puja_correlativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pujas", ["puja_id"], name: "index_pujas_on_puja_id", using: :btree
  add_index "pujas", ["sub_id"], name: "index_pujas_on_sub_id", using: :btree
  add_index "pujas", ["usuario_id"], name: "index_pujas_on_usuario_id", using: :btree

  create_table "region", id: false, force: true do |t|
    t.integer "region_id",                 null: false
    t.string  "region_nombre", limit: 128
  end

  add_index "region", ["region_id"], name: "region_pk", unique: true, using: :btree

  create_table "regions", force: true do |t|
    t.integer  "region_id"
    t.string   "region_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regions", ["region_id"], name: "index_regions_on_region_id", using: :btree

  create_table "remate", id: false, force: true do |t|
    t.integer "sub_id",            null: false
    t.integer "estado_subasta_id", null: false
    t.integer "usuario_id",        null: false
    t.integer "prod_sub_id",       null: false
    t.integer "sub_monto_max"
    t.date    "sub_fecha_inicio"
    t.date    "sub_fecha_termino"
  end

  add_index "remate", ["estado_subasta_id"], name: "relationship_13_fk", using: :btree
  add_index "remate", ["prod_sub_id"], name: "relationship_19_fk", using: :btree
  add_index "remate", ["sub_id"], name: "subasta_pk", unique: true, using: :btree
  add_index "remate", ["usuario_id"], name: "relationship_3_fk", using: :btree

  create_table "remates", force: true do |t|
    t.integer  "sub_id"
    t.integer  "estado_subasta_id"
    t.integer  "usuario_id"
    t.integer  "prod_sub_id"
    t.integer  "sub_monto_max"
    t.date     "sub_fecha_inicio"
    t.date     "sub_fecha_termino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "remates", ["estado_subasta_id"], name: "index_remates_on_estado_subasta_id", using: :btree
  add_index "remates", ["prod_sub_id"], name: "index_remates_on_prod_sub_id", using: :btree
  add_index "remates", ["sub_id"], name: "index_remates_on_sub_id", using: :btree
  add_index "remates", ["usuario_id"], name: "index_remates_on_usuario_id", using: :btree

  create_table "tipo_transaccion", id: false, force: true do |t|
    t.integer "tipo_trans_id", null: false
  end

  add_index "tipo_transaccion", ["tipo_trans_id"], name: "tipo_transaccion_pk", unique: true, using: :btree

  create_table "tipo_transaccions", force: true do |t|
    t.integer  "tipo_trans_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipo_transaccions", ["tipo_trans_id"], name: "index_tipo_transaccions_on_tipo_trans_id", using: :btree

  create_table "transaccion", id: false, force: true do |t|
    t.integer "transaccion_id", null: false
    t.integer "tipo_trans_id"
  end

  add_index "transaccion", ["tipo_trans_id"], name: "relationship_51_fk", using: :btree
  add_index "transaccion", ["transaccion_id"], name: "transaccion_pk", unique: true, using: :btree

  create_table "transaccions", force: true do |t|
    t.integer  "transaccion_id"
    t.integer  "tipo_trans_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transaccions", ["tipo_trans_id"], name: "index_transaccions_on_tipo_trans_id", using: :btree
  add_index "transaccions", ["transaccion_id"], name: "index_transaccions_on_transaccion_id", using: :btree

  create_table "usuario", id: false, force: true do |t|
    t.integer "usuario_id",                          null: false
    t.integer "comuna_id",                           null: false
    t.string  "usuario_nombre",         limit: 256
    t.string  "usuario_apellidopat",    limit: 256
    t.string  "usuario_apellidomat",    limit: 256
    t.string  "usuario_rut",            limit: 1024
    t.string  "usuario_e_mail",         limit: 1024
    t.string  "usuario_nombre_usuario", limit: 256
    t.string  "usuario_contrasena",     limit: 128
    t.boolean "usuario_vip"
    t.string  "usuario_calle",          limit: 128
    t.integer "usuario_numero_calle",   limit: 2
    t.string  "usuario_villa",          limit: 128
    t.integer "usuario_numero_depto",   limit: 2
    t.integer "usuario_bloque",         limit: 2
  end

  add_index "usuario", ["comuna_id"], name: "relationship_34_fk", using: :btree
  add_index "usuario", ["usuario_id"], name: "usuario_pk", unique: true, using: :btree

  create_table "usuarios", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "comuna_id"
    t.string   "usuario_nombre"
    t.string   "usuario_apellidopat"
    t.string   "usuario_apellidomat"
    t.string   "usuario_rut"
    t.string   "usuario_e_mail"
    t.string   "usuario_nombre_usuario"
    t.string   "usuario_contrasena"
    t.boolean  "usuario_vip"
    t.string   "usuario_calle"
    t.integer  "usuario_numero_calle"
    t.string   "usuario_villa"
    t.integer  "usuario_numero_depto"
    t.integer  "usuario_bloque"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["comuna_id"], name: "index_usuarios_on_comuna_id", using: :btree
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  add_index "usuarios", ["usuario_id"], name: "index_usuarios_on_usuario_id", using: :btree

  create_table "valor", id: false, force: true do |t|
    t.integer "valor_id",                  null: false
    t.integer "propiedad_id",              null: false
    t.integer "producto_id",               null: false
    t.string  "valor_nombre", limit: 1024
  end

  add_index "valor", ["producto_id"], name: "relationship_15_fk", using: :btree
  add_index "valor", ["propiedad_id"], name: "relationship_16_fk", using: :btree
  add_index "valor", ["valor_id"], name: "valor_pk", unique: true, using: :btree

  create_table "valors", force: true do |t|
    t.integer  "valor_id"
    t.integer  "propiedad_id"
    t.integer  "producto_id"
    t.string   "valor_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "valors", ["producto_id"], name: "index_valors_on_producto_id", using: :btree
  add_index "valors", ["propiedad_id"], name: "index_valors_on_propiedad_id", using: :btree
  add_index "valors", ["valor_id"], name: "index_valors_on_valor_id", using: :btree

end

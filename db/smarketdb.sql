/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     10-06-2014 8:05:09                           */
/*==============================================================*/


drop index CONTROLAUDITORIA_PK;

drop table AUDITORIUM;

drop index RELATIONSHIP_50_FK;

drop index CLASE_PK;

drop table CLASE_UNIT;

drop index RELATIONSHIP_36_FK;

drop index COMISION_PK;

drop table COMISION;

drop index INHERITANCE_5_FK;

drop index RELATIONSHIP_38_FK;

drop index RELATIONSHIP_37_FK;

drop index RELATIONSHIP_39_FK;

drop index COMPRASUBASTA_PK;

drop table COMPRA_REMATE;

drop index INHERITANCE_6_FK;

drop index RELATIONSHIP_46_FK;

drop index RELATIONSHIP_27_FK;

drop index RELATIONSHIP_20_FK;

drop index COMPRA_VENTA_ESPECIAL_PK;

drop table COMPRA_VENTA_ESPECIAL;

drop index INHERITANCE_7_FK;

drop index RELATIONSHIP_32_FK;

drop index RELATIONSHIP_31_FK;

drop index RELATIONSHIP_30_FK;

drop index COMPRA_VENTA_NORMAL_PK;

drop table COMPRA_VENTA_NORMAL;

drop index RELATIONSHIP_35_FK;

drop index COMUNA_PK;

drop table COMUNA;

drop index RELATIONSHIP_41_FK;

drop index CONDICION_PK;

drop table CONDICION;

drop index ESTADO_NOTIFICACION_PK;

drop table ESTADO_NOTIFICACION;

drop index ESTADO_SUBASTA_PK;

drop table ESTADO_REMATE;

drop index ESTADO_PRODUCTO_OFERTADO_PARA_NECESIDAD_PK;

drop table EST_PROD_OF_NEC;

drop index RELATIONSHIP_42_FK;

drop index GANANCIA_LIQUIDA_PK;

drop table GANANCIA_LIQUIDA;

drop index RELATIONSHIP_47_FK;

drop index RELATIONSHIP_45_FK;

drop index NOTIFICACION_PK;

drop table NOTIFICACION;

drop index RELATIONSHIP_14_FK;

drop index PRODUCTO_PK;

drop table PRODUCTO;

drop index INHERITANCE_1_FK;

drop index RELATIONSHIP_43_FK;

drop index PRODUCTO_NECESITADO_PK;

drop table PRODUCTO_NECESITADO;

drop index INHERITANCE_4_FK;

drop index RELATIONSHIP_44_FK;

drop index PRODUCTO_OFERTADO_PK;

drop table PRODUCTO_OFERTADO;

drop index INHERITANCE_2_FK;

drop index PRODUCTO_SUBASTADO_PK;

drop table PRODUCTO_REMATADO;

drop index INHERITANCE_3_FK;

drop index RELATIONSHIP_40_FK;

drop index RELATIONSHIP_54_FK;

drop index RELATIONSHIP_52_FK;

drop index PRODUCTO_OFERTADO_PARA_NECESIDAD_PK;

drop table PROD_OF_NEC;

drop index PROPIEDAD_PK;

drop table PROPIEDAD;

drop index RELATIONSHIP_18_FK;

drop index RELATIONSHIP_17_FK;

drop table PROPIEDADCLASE;

drop index RELATIONSHIP_49_FK;

drop index PROVINCIA_PK;

drop table PROVINCIA_UNIT;

drop index RELATIONSHIP_48_FK;

drop index RELATIONSHIP_4_FK;

drop index PUJA_PK;

drop table PUJA;

drop index REGION_PK;

drop table REGION;

drop index RELATIONSHIP_19_FK;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_3_FK;

drop index SUBASTA_PK;

drop table REMATE;

drop index TIPO_TRANSACCION_PK;

drop table TIPO_TRANSACCION;

drop index RELATIONSHIP_51_FK;

drop index TRANSACCION_PK;

drop table TRANSACCION;

drop index RELATIONSHIP_34_FK;

drop index USUARIO_PK;

drop table USUARIO;

drop index RELATIONSHIP_16_FK;

drop index RELATIONSHIP_15_FK;

drop index VALOR_PK;

drop table VALOR;

/*==============================================================*/
/* Table: AUDITORIUM                                            */
/*==============================================================*/
create table AUDITORIUM (
   AUDITORIA_ID         INT4                 not null,
   AUDITORIA_USUARIO    VARCHAR(128)         null,
   AUDITORIA_TABLA_MOD  VARCHAR(128)         null,
   AUDITORIA_OPERACION  CHAR(64)             null,
   AUDITORIA_FECHA      DATE                 null,
   AUDITORIA_ATTR_MOD   VARCHAR(64)          null,
   AUDITORIA_ANTES      VARCHAR(128)         null,
   AUDITORIA_DESPUES    VARCHAR(128)         null,
   constraint PK_AUDITORIUM primary key (AUDITORIA_ID)
);


/*==============================================================*/
/* Index: CONTROLAUDITORIA_PK                                   */
/*==============================================================*/
create unique index CONTROLAUDITORIA_PK on AUDITORIUM (
AUDITORIA_ID
);

/*==============================================================*/
/* Table: CLASE_UNIT                                            */
/*==============================================================*/
create table CLASE_UNIT (
   CLASE_ID             INT4                 not null,
   CLA_CLASE_ID         INT4                 null,
   CLASE_NOMBRE         CHAR(256)            null,
   constraint PK_CLASE_UNIT primary key (CLASE_ID)
);



/*==============================================================*/
/* Index: CLASE_PK                                              */
/*==============================================================*/
create unique index CLASE_PK on CLASE_UNIT (
CLASE_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_50_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_50_FK on CLASE_UNIT (
CLA_CLASE_ID
);

/*==============================================================*/
/* Table: COMISION                                              */
/*==============================================================*/
create table COMISION (
   COMISION_ID          INT4                 not null,
   TRANSACCION_ID       INT4                 not null,
   COMISION_MONTO       INT4                 null,
   constraint PK_COMISION primary key (COMISION_ID)
);


/*==============================================================*/
/* Index: COMISION_PK                                           */
/*==============================================================*/
create unique index COMISION_PK on COMISION (
COMISION_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_36_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_36_FK on COMISION (
TRANSACCION_ID
);

/*==============================================================*/
/* Table: COMPRA_REMATE                                         */
/*==============================================================*/
create table COMPRA_REMATE (
   TIPO_TRANS_ID        INT4                 not null,
   COMPRASUBASTA_ID     INT4                 not null,
   USUARIO_ID           INT4                 not null,
   PROD_SUB_ID          INT4                 not null,
   USU_USUARIO_ID       INT4                 not null,
   COMPRASUBASTA_FECHA  DATE                 null,
   constraint PK_COMPRA_REMATE primary key (COMPRASUBASTA_ID)
);


/*==============================================================*/
/* Index: COMPRASUBASTA_PK                                      */
/*==============================================================*/
create unique index COMPRASUBASTA_PK on COMPRA_REMATE (
COMPRASUBASTA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_39_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_39_FK on COMPRA_REMATE (
PROD_SUB_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_37_FK on COMPRA_REMATE (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_38_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_38_FK on COMPRA_REMATE (
USU_USUARIO_ID
);

/*==============================================================*/
/* Index: INHERITANCE_5_FK                                      */
/*==============================================================*/
create  index INHERITANCE_5_FK on COMPRA_REMATE (
TIPO_TRANS_ID
);

/*==============================================================*/
/* Table: COMPRA_VENTA_ESPECIAL                                 */
/*==============================================================*/
create table COMPRA_VENTA_ESPECIAL (
   TIPO_TRANS_ID        INT4                 not null,
   COMPRAVENTA_ID       INT4                 not null,
   USUARIO_ID           INT4                 not null,
   PROD_OF_NEC_ID       INT4                 not null,
   USU_USUARIO_ID       INT4                 not null,
   COMPRAVENTANOR_FECHA DATE                 null,
   constraint PK_COMPRA_VENTA_ESPECIAL primary key (COMPRAVENTA_ID)
);



/*==============================================================*/
/* Index: COMPRA_VENTA_ESPECIAL_PK                              */
/*==============================================================*/
create unique index COMPRA_VENTA_ESPECIAL_PK on COMPRA_VENTA_ESPECIAL (
COMPRAVENTA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on COMPRA_VENTA_ESPECIAL (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_27_FK on COMPRA_VENTA_ESPECIAL (
USU_USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_46_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_46_FK on COMPRA_VENTA_ESPECIAL (
PROD_OF_NEC_ID
);

/*==============================================================*/
/* Index: INHERITANCE_6_FK                                      */
/*==============================================================*/
create  index INHERITANCE_6_FK on COMPRA_VENTA_ESPECIAL (
TIPO_TRANS_ID
);

/*==============================================================*/
/* Table: COMPRA_VENTA_NORMAL                                   */
/*==============================================================*/
create table COMPRA_VENTA_NORMAL (
   TIPO_TRANS_ID        INT4                 not null,
   COMPRAVENTA_ID2      INT4                 not null,
   USUARIO_ID           INT4                 not null,
   USU_USUARIO_ID       INT4                 not null,
   PRODUCTO_OF_ID       INT4                 not null,
   COMPRAVENTANOR_FECHA DATE                 null,
   constraint PK_COMPRA_VENTA_NORMAL primary key (COMPRAVENTA_ID2)
);


/*==============================================================*/
/* Index: COMPRA_VENTA_NORMAL_PK                                */
/*==============================================================*/
create unique index COMPRA_VENTA_NORMAL_PK on COMPRA_VENTA_NORMAL (
COMPRAVENTA_ID2
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_30_FK on COMPRA_VENTA_NORMAL (
PRODUCTO_OF_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_31_FK on COMPRA_VENTA_NORMAL (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_32_FK on COMPRA_VENTA_NORMAL (
USU_USUARIO_ID
);

/*==============================================================*/
/* Index: INHERITANCE_7_FK                                      */
/*==============================================================*/
create  index INHERITANCE_7_FK on COMPRA_VENTA_NORMAL (
TIPO_TRANS_ID
);

/*==============================================================*/
/* Table: COMUNA                                                */
/*==============================================================*/
create table COMUNA (
   COMUNA_ID            INT4                 not null,
   PROVINCIA_ID         INT4                 not null,
   COMUNA_NOMBRE        VARCHAR(128)         null,
   constraint PK_COMUNA primary key (COMUNA_ID)
);

/*==============================================================*/
/* Index: COMUNA_PK                                             */
/*==============================================================*/
create unique index COMUNA_PK on COMUNA (
COMUNA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_35_FK on COMUNA (
PROVINCIA_ID
);

/*==============================================================*/
/* Table: CONDICION                                             */
/*==============================================================*/
create table CONDICION (
   CONDICION_ID         INT4                 not null,
   TIPO_TRANS_ID        INT4                 not null,
   CONDICION_PORCENTAJE_COMISION FLOAT8               null,
   constraint PK_CONDICION primary key (CONDICION_ID)
);


/*==============================================================*/
/* Index: CONDICION_PK                                          */
/*==============================================================*/
create unique index CONDICION_PK on CONDICION (
CONDICION_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_41_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_41_FK on CONDICION (
TIPO_TRANS_ID
);

/*==============================================================*/
/* Table: ESTADO_NOTIFICACION                                   */
/*==============================================================*/
create table ESTADO_NOTIFICACION (
   ESTADO_NOT_ID        INT4                 not null,
   ESTADO_NOT_NOMBRE    VARCHAR(128)         null,
   constraint PK_ESTADO_NOTIFICACION primary key (ESTADO_NOT_ID)
);

/*==============================================================*/
/* Index: ESTADO_NOTIFICACION_PK                                */
/*==============================================================*/
create unique index ESTADO_NOTIFICACION_PK on ESTADO_NOTIFICACION (
ESTADO_NOT_ID
);

/*==============================================================*/
/* Table: ESTADO_REMATE                                         */
/*==============================================================*/
create table ESTADO_REMATE (
   ESTADO_SUBASTA_ID    INT4                 not null,
   ESTADO_SUBASTA_NOMBRE CHAR(256)            null,
   constraint PK_ESTADO_REMATE primary key (ESTADO_SUBASTA_ID)
);



/*==============================================================*/
/* Index: ESTADO_SUBASTA_PK                                     */
/*==============================================================*/
create unique index ESTADO_SUBASTA_PK on ESTADO_REMATE (
ESTADO_SUBASTA_ID
);

/*==============================================================*/
/* Table: EST_PROD_OF_NEC                                       */
/*==============================================================*/
create table EST_PROD_OF_NEC (
   ESTADO_PROD_OF_NECESIDAD_ID INT4                 not null,
   ESTADO_PROD_OF_NECESIDAD_NOMBRE CHAR(256)            null,
   constraint PK_EST_PROD_OF_NEC primary key (ESTADO_PROD_OF_NECESIDAD_ID)
);



/*==============================================================*/
/* Index: ESTADO_PRODUCTO_OFERTADO_PARA_NECESIDAD_PK            */
/*==============================================================*/
create unique index ESTADO_PRODUCTO_OFERTADO_PARA_NECESIDAD_PK on EST_PROD_OF_NEC (
ESTADO_PROD_OF_NECESIDAD_ID
);

/*==============================================================*/
/* Table: GANANCIA_LIQUIDA                                      */
/*==============================================================*/
create table GANANCIA_LIQUIDA (
   GANANCIA_LIQUIDA_ID  INT4                 not null,
   TRANSACCION_ID       INT4                 not null,
   GANANCIA_LIQUIDA_MONTO INT4                 null,
   constraint PK_GANANCIA_LIQUIDA primary key (GANANCIA_LIQUIDA_ID)
);


/*==============================================================*/
/* Index: GANANCIA_LIQUIDA_PK                                   */
/*==============================================================*/
create unique index GANANCIA_LIQUIDA_PK on GANANCIA_LIQUIDA (
GANANCIA_LIQUIDA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_42_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_42_FK on GANANCIA_LIQUIDA (
TRANSACCION_ID
);

/*==============================================================*/
/* Table: NOTIFICACION                                          */
/*==============================================================*/
create table NOTIFICACION (
   NOTIFICACION_ID      INT4                 not null,
   USUARIO_ID           INT4                 not null,
   ESTADO_NOT_ID        INT4                 not null,
   NOTIFICACIO_TITULO   VARCHAR(128)         null,
   NOTIFICACION_TEXTO   VARCHAR(1024)        null,
   constraint PK_NOTIFICACION primary key (NOTIFICACION_ID)
);


/*==============================================================*/
/* Index: NOTIFICACION_PK                                       */
/*==============================================================*/
create unique index NOTIFICACION_PK on NOTIFICACION (
NOTIFICACION_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_45_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_45_FK on NOTIFICACION (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_47_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_47_FK on NOTIFICACION (
ESTADO_NOT_ID
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   PRODUCTO_ID          INT4                 not null,
   CLASE_ID             INT4                 null,
   PRODUCTO_NOMBRE      VARCHAR(1024)        null,
   constraint PK_PRODUCTO primary key (PRODUCTO_ID)
);



/*==============================================================*/
/* Index: PRODUCTO_PK                                           */
/*==============================================================*/
create unique index PRODUCTO_PK on PRODUCTO (
PRODUCTO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on PRODUCTO (
CLASE_ID
);

/*==============================================================*/
/* Table: PRODUCTO_NECESITADO                                   */
/*==============================================================*/
create table PRODUCTO_NECESITADO (
   PRODUCTO_ID          INT4                 not null,
   PROD_NEC_ID          INT4                 not null,
   USUARIO_ID           INT4                 not null,
   PROD_NEC_CANTIDAD    INT4                 null,
   PROD_NEC_PRECIOTOPE  INT4                 null,
   PROD_NEC_FECHA_PUBLICACION DATE                 null,
   constraint PK_PRODUCTO_NECESITADO primary key (PROD_NEC_ID)
);


/*==============================================================*/
/* Index: PRODUCTO_NECESITADO_PK                                */
/*==============================================================*/
create unique index PRODUCTO_NECESITADO_PK on PRODUCTO_NECESITADO (
PROD_NEC_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_43_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_43_FK on PRODUCTO_NECESITADO (
USUARIO_ID
);

/*==============================================================*/
/* Index: INHERITANCE_1_FK                                      */
/*==============================================================*/
create  index INHERITANCE_1_FK on PRODUCTO_NECESITADO (
PRODUCTO_ID
);

/*==============================================================*/
/* Table: PRODUCTO_OFERTADO                                     */
/*==============================================================*/
create table PRODUCTO_OFERTADO (
   PRODUCTO_ID          INT4                 not null,
   PRODUCTO_OF_ID       INT4                 not null,
   USUARIO_ID           INT4                 not null,
   PRODUCTO_OF_CANTIDAD INT4                 null,
   PRODUCTO_OF_PRECIO_UNITARIO INT4                 null,
   PRODUCTO_OF_FECHA_PUBLICACION DATE                 null,
   constraint PK_PRODUCTO_OFERTADO primary key (PRODUCTO_OF_ID)
);



/*==============================================================*/
/* Index: PRODUCTO_OFERTADO_PK                                  */
/*==============================================================*/
create unique index PRODUCTO_OFERTADO_PK on PRODUCTO_OFERTADO (
PRODUCTO_OF_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_44_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_44_FK on PRODUCTO_OFERTADO (
USUARIO_ID
);

/*==============================================================*/
/* Index: INHERITANCE_4_FK                                      */
/*==============================================================*/
create  index INHERITANCE_4_FK on PRODUCTO_OFERTADO (
PRODUCTO_ID
);

/*==============================================================*/
/* Table: PRODUCTO_REMATADO                                     */
/*==============================================================*/
create table PRODUCTO_REMATADO (
   PRODUCTO_ID          INT4                 not null,
   PROD_SUB_ID          INT4                 not null,
   PROD_SUB_CANTIDAD    INT4                 null,
   PROD_SUB_PRECIO_UNITARIO INT4                 null,
   constraint PK_PRODUCTO_REMATADO primary key (PROD_SUB_ID)
);


/*==============================================================*/
/* Index: PRODUCTO_SUBASTADO_PK                                 */
/*==============================================================*/
create unique index PRODUCTO_SUBASTADO_PK on PRODUCTO_REMATADO (
PROD_SUB_ID
);

/*==============================================================*/
/* Index: INHERITANCE_2_FK                                      */
/*==============================================================*/
create  index INHERITANCE_2_FK on PRODUCTO_REMATADO (
PRODUCTO_ID
);

/*==============================================================*/
/* Table: PROD_OF_NEC                                           */
/*==============================================================*/
create table PROD_OF_NEC (
   PRODUCTO_ID          INT4                 not null,
   PROD_OF_NEC_ID       INT4                 not null,
   USUARIO_ID           INT4                 not null,
   ESTADO_PROD_OF_NECESIDAD_ID INT4                 not null,
   PROD_NEC_ID          INT4                 not null,
   PROD_OF_NEC_CANTIDAD INT4                 null,
   PROD_OF_NEC_PRECIO_UNITARIO INT4                 null,
   PROD_OF_NEC_FECHA_PUBLICACION DATE                 null,
   constraint PK_PROD_OF_NEC primary key (PROD_OF_NEC_ID)
);



/*==============================================================*/
/* Index: PRODUCTO_OFERTADO_PARA_NECESIDAD_PK                   */
/*==============================================================*/
create unique index PRODUCTO_OFERTADO_PARA_NECESIDAD_PK on PROD_OF_NEC (
PROD_OF_NEC_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_52_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_52_FK on PROD_OF_NEC (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_54_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_54_FK on PROD_OF_NEC (
ESTADO_PROD_OF_NECESIDAD_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_40_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_40_FK on PROD_OF_NEC (
PROD_NEC_ID
);

/*==============================================================*/
/* Index: INHERITANCE_3_FK                                      */
/*==============================================================*/
create  index INHERITANCE_3_FK on PROD_OF_NEC (
PRODUCTO_ID
);

/*==============================================================*/
/* Table: PROPIEDAD                                             */
/*==============================================================*/
create table PROPIEDAD (
   PROPIEDAD_ID         INT4                 not null,
   PROPIEDAD_NOMBRE     VARCHAR(1024)        null,
   constraint PK_PROPIEDAD primary key (PROPIEDAD_ID)
);



/*==============================================================*/
/* Index: PROPIEDAD_PK                                          */
/*==============================================================*/
create unique index PROPIEDAD_PK on PROPIEDAD (
PROPIEDAD_ID
);

/*==============================================================*/
/* Table: PROPIEDADCLASE                                        */
/*==============================================================*/
create table PROPIEDADCLASE (
   PROPIEDAD_ID         INT4                 not null,
   CLASE_ID             INT4                 not null
);


/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on PROPIEDADCLASE (
CLASE_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on PROPIEDADCLASE (
PROPIEDAD_ID
);

/*==============================================================*/
/* Table: PROVINCIA_UNIT                                        */
/*==============================================================*/
create table PROVINCIA_UNIT (
   PROVINCIA_ID         INT4                 not null,
   REGION_ID            INT4                 not null,
   PROVINCIA_NOMBRE     VARCHAR(128)         null,
   constraint PK_PROVINCIA_UNIT primary key (PROVINCIA_ID)
);

/*==============================================================*/
/* Index: PROVINCIA_PK                                          */
/*==============================================================*/
create unique index PROVINCIA_PK on PROVINCIA_UNIT (
PROVINCIA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_49_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_49_FK on PROVINCIA_UNIT (
REGION_ID
);

/*==============================================================*/
/* Table: PUJA                                                  */
/*==============================================================*/
create table PUJA (
   PUJA_ID              INT4                 not null,
   SUB_ID               INT4                 not null,
   USUARIO_ID           INT4                 not null,
   PUJA_VALOR           INT4                 null,
   PUJA_CORRELATIVO     INT4                 null,
   constraint PK_PUJA primary key (PUJA_ID)
);



/*==============================================================*/
/* Index: PUJA_PK                                               */
/*==============================================================*/
create unique index PUJA_PK on PUJA (
PUJA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on PUJA (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_48_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_48_FK on PUJA (
SUB_ID
);

/*==============================================================*/
/* Table: REGION                                                */
/*==============================================================*/
create table REGION (
   REGION_ID            INT4                 not null,
   REGION_NOMBRE        VARCHAR(128)         null,
   constraint PK_REGION primary key (REGION_ID)
);

/*==============================================================*/
/* Index: REGION_PK                                             */
/*==============================================================*/
create unique index REGION_PK on REGION (
REGION_ID
);

/*==============================================================*/
/* Table: REMATE                                                */
/*==============================================================*/
create table REMATE (
   SUB_ID               INT4                 not null,
   ESTADO_SUBASTA_ID    INT4                 not null,
   USUARIO_ID           INT4                 not null,
   PROD_SUB_ID          INT4                 not null,
   SUB_MONTO_MAX        INT4                 null,
   SUB_FECHA_INICIO     DATE                 null,
   SUB_FECHA_TERMINO    DATE                 null,
   constraint PK_REMATE primary key (SUB_ID)
);



/*==============================================================*/
/* Index: SUBASTA_PK                                            */
/*==============================================================*/
create unique index SUBASTA_PK on REMATE (
SUB_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on REMATE (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on REMATE (
ESTADO_SUBASTA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on REMATE (
PROD_SUB_ID
);

/*==============================================================*/
/* Table: TIPO_TRANSACCION                                      */
/*==============================================================*/
create table TIPO_TRANSACCION (
   TIPO_TRANS_ID        INT4                 not null,
   constraint PK_TIPO_TRANSACCION primary key (TIPO_TRANS_ID)
);


/*==============================================================*/
/* Index: TIPO_TRANSACCION_PK                                   */
/*==============================================================*/
create unique index TIPO_TRANSACCION_PK on TIPO_TRANSACCION (
TIPO_TRANS_ID
);

/*==============================================================*/
/* Table: TRANSACCION                                           */
/*==============================================================*/
create table TRANSACCION (
   TRANSACCION_ID       INT4                 not null,
   TIPO_TRANS_ID        INT4                 null,
   constraint PK_TRANSACCION primary key (TRANSACCION_ID)
);


/*==============================================================*/
/* Index: TRANSACCION_PK                                        */
/*==============================================================*/
create unique index TRANSACCION_PK on TRANSACCION (
TRANSACCION_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_51_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_51_FK on TRANSACCION (
TIPO_TRANS_ID
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   USUARIO_ID           INT4                 not null,
   COMUNA_ID            INT4                 not null,
   USUARIO_NOMBRE       CHAR(256)            null,
   USUARIO_APELLIDOPAT  CHAR(256)            null,
   USUARIO_APELLIDOMAT  CHAR(256)            null,
   USUARIO_RUT          VARCHAR(1024)        null,
   USUARIO_E_MAIL       VARCHAR(1024)        null,
   USUARIO_NOMBRE_USUARIO CHAR(256)            null,
   USUARIO_CONTRASENA   VARCHAR(128)         null,
   USUARIO_VIP          BOOL                 null,
   USUARIO_CALLE        VARCHAR(128)         null,
   USUARIO_NUMERO_CALLE INT2                 null,
   USUARIO_VILLA        VARCHAR(128)         null,
   USUARIO_NUMERO_DEPTO INT2                 null,
   USUARIO_BLOQUE       INT2                 null,
   constraint PK_USUARIO primary key (USUARIO_ID)
);



/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
USUARIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_34_FK on USUARIO (
COMUNA_ID
);

/*==============================================================*/
/* Table: VALOR                                                 */
/*==============================================================*/
create table VALOR (
   VALOR_ID             INT4                 not null,
   PROPIEDAD_ID         INT4                 not null,
   PRODUCTO_ID          INT4                 not null,
   VALOR_NOMBRE         VARCHAR(1024)        null,
   constraint PK_VALOR primary key (VALOR_ID)
);


/*==============================================================*/
/* Index: VALOR_PK                                              */
/*==============================================================*/
create unique index VALOR_PK on VALOR (
VALOR_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on VALOR (
PRODUCTO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on VALOR (
PROPIEDAD_ID
);

alter table CLASE_UNIT
   add constraint FK_CLASE_UN_RELATIONS_CLASE_UN foreign key (CLA_CLASE_ID)
      references CLASE_UNIT (CLASE_ID)
      on delete restrict on update restrict;

alter table COMISION
   add constraint FK_COMISION_RELATIONS_TRANSACC foreign key (TRANSACCION_ID)
      references TRANSACCION (TRANSACCION_ID)
      on delete restrict on update restrict;

alter table COMPRA_REMATE
   add constraint FK_COMPRA_R_INHERITAN_TIPO_TRA foreign key (TIPO_TRANS_ID)
      references TIPO_TRANSACCION (TIPO_TRANS_ID)
      on delete restrict on update restrict;

alter table COMPRA_REMATE
   add constraint FK_COMPRA_R_RELATIONS_USUARIO2 foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table COMPRA_REMATE
   add constraint FK_COMPRA_R_RELATIONS_USUARIO foreign key (USU_USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table COMPRA_REMATE
   add constraint FK_COMPRA_R_RELATIONS_PRODUCTO foreign key (PROD_SUB_ID)
      references PRODUCTO_REMATADO (PROD_SUB_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_ESPECIAL
   add constraint FK_COMPRA_V_INHERITAN_TIPO_TRA foreign key (TIPO_TRANS_ID)
      references TIPO_TRANSACCION (TIPO_TRANS_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_ESPECIAL
   add constraint FK_COMPRA_V_RELATIONS_USUARIO2 foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_ESPECIAL
   add constraint FK_COMPRA_V_RELATIONS_USUARIO foreign key (USU_USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_ESPECIAL
   add constraint FK_COMPRA_V_RELATIONS_PROD_OF_ foreign key (PROD_OF_NEC_ID)
      references PROD_OF_NEC (PROD_OF_NEC_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_NORMAL
   add constraint FK_COMPRA_V_INHERITAN_TIPO_TRA foreign key (TIPO_TRANS_ID)
      references TIPO_TRANSACCION (TIPO_TRANS_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_NORMAL
   add constraint FK_COMPRA_V_RELATIONS_PRODUCTO foreign key (PRODUCTO_OF_ID)
      references PRODUCTO_OFERTADO (PRODUCTO_OF_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_NORMAL
   add constraint FK_COMPRA_V_RELATIONS_USUARIO2 foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table COMPRA_VENTA_NORMAL
   add constraint FK_COMPRA_V_RELATIONS_USUARIO foreign key (USU_USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table COMUNA
   add constraint FK_COMUNA_RELATIONS_PROVINCI foreign key (PROVINCIA_ID)
      references PROVINCIA_UNIT (PROVINCIA_ID)
      on delete restrict on update restrict;

alter table CONDICION
   add constraint FK_CONDICIO_RELATIONS_TIPO_TRA foreign key (TIPO_TRANS_ID)
      references TIPO_TRANSACCION (TIPO_TRANS_ID)
      on delete restrict on update restrict;

alter table GANANCIA_LIQUIDA
   add constraint FK_GANANCIA_RELATIONS_TRANSACC foreign key (TRANSACCION_ID)
      references TRANSACCION (TRANSACCION_ID)
      on delete restrict on update restrict;

alter table NOTIFICACION
   add constraint FK_NOTIFICA_RELATIONS_USUARIO foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table NOTIFICACION
   add constraint FK_NOTIFICA_RELATIONS_ESTADO_N foreign key (ESTADO_NOT_ID)
      references ESTADO_NOTIFICACION (ESTADO_NOT_ID)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_RELATIONS_CLASE_UN foreign key (CLASE_ID)
      references CLASE_UNIT (CLASE_ID)
      on delete restrict on update restrict;

alter table PRODUCTO_NECESITADO
   add constraint FK_PRODUCTO_INHERITAN_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTO (PRODUCTO_ID)
      on delete restrict on update restrict;

alter table PRODUCTO_NECESITADO
   add constraint FK_PRODUCTO_RELATIONS_USUARIO foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table PRODUCTO_OFERTADO
   add constraint FK_PRODUCTO_INHERITAN_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTO (PRODUCTO_ID)
      on delete restrict on update restrict;

alter table PRODUCTO_OFERTADO
   add constraint FK_PRODUCTO_RELATIONS_USUARIO foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table PRODUCTO_REMATADO
   add constraint FK_PRODUCTO_INHERITAN_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTO (PRODUCTO_ID)
      on delete restrict on update restrict;

alter table PROD_OF_NEC
   add constraint FK_PROD_OF__INHERITAN_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTO (PRODUCTO_ID)
      on delete restrict on update restrict;

alter table PROD_OF_NEC
   add constraint FK_PROD_OF__RELATIONS_PRODUCTO foreign key (PROD_NEC_ID)
      references PRODUCTO_NECESITADO (PROD_NEC_ID)
      on delete restrict on update restrict;

alter table PROD_OF_NEC
   add constraint FK_PROD_OF__RELATIONS_USUARIO foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table PROD_OF_NEC
   add constraint FK_PROD_OF__RELATIONS_EST_PROD foreign key (ESTADO_PROD_OF_NECESIDAD_ID)
      references EST_PROD_OF_NEC (ESTADO_PROD_OF_NECESIDAD_ID)
      on delete restrict on update restrict;

alter table PROPIEDADCLASE
   add constraint FK_PROPIEDA_RELATIONS_CLASE_UN foreign key (CLASE_ID)
      references CLASE_UNIT (CLASE_ID)
      on delete restrict on update restrict;

alter table PROPIEDADCLASE
   add constraint FK_PROPIEDA_RELATIONS_PROPIEDA foreign key (PROPIEDAD_ID)
      references PROPIEDAD (PROPIEDAD_ID)
      on delete restrict on update restrict;

alter table PROVINCIA_UNIT
   add constraint FK_PROVINCI_RELATIONS_REGION foreign key (REGION_ID)
      references REGION (REGION_ID)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_RELATIONS_USUARIO foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_RELATIONS_REMATE foreign key (SUB_ID)
      references REMATE (SUB_ID)
      on delete restrict on update restrict;

alter table REMATE
   add constraint FK_REMATE_RELATIONS_ESTADO_R foreign key (ESTADO_SUBASTA_ID)
      references ESTADO_REMATE (ESTADO_SUBASTA_ID)
      on delete restrict on update restrict;

alter table REMATE
   add constraint FK_REMATE_RELATIONS_PRODUCTO foreign key (PROD_SUB_ID)
      references PRODUCTO_REMATADO (PROD_SUB_ID)
      on delete restrict on update restrict;

alter table REMATE
   add constraint FK_REMATE_RELATIONS_USUARIO foreign key (USUARIO_ID)
      references USUARIO (USUARIO_ID)
      on delete restrict on update restrict;

alter table TRANSACCION
   add constraint FK_TRANSACC_RELATIONS_TIPO_TRA foreign key (TIPO_TRANS_ID)
      references TIPO_TRANSACCION (TIPO_TRANS_ID)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_RELATIONS_COMUNA foreign key (COMUNA_ID)
      references COMUNA (COMUNA_ID)
      on delete restrict on update restrict;

alter table VALOR
   add constraint FK_VALOR_RELATIONS_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTO (PRODUCTO_ID)
      on delete restrict on update restrict;

alter table VALOR
   add constraint FK_VALOR_RELATIONS_PROPIEDA foreign key (PROPIEDAD_ID)
      references PROPIEDAD (PROPIEDAD_ID)
      on delete restrict on update restrict;


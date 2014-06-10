# Creado por Felipe Garay
import psycopg2
from subprocess import call
from subprocess import Popen, PIPE, check_output


def toRails(tipo):
    if tipo == "character varying":
        return "string"
    elif tipo == "integer":
        return "integer"
    elif tipo == "timestamp without time zone":
        return "timestamp"
    elif tipo == "double precision":
        return "float"
    elif tipo == "boolean":
        return "boolean"
    elif tipo == "time without time zone":
        return "time"
    elif tipo == "date":
        return "date"
    elif tipo == "json":
        return "string"
    elif tipo == "smallint":
        return "integer"
    elif tipo == "real":
        return "float"
    elif tipo == "character":
        return "string"
    else:
        raise BaseException(tipo)


def nombre(s):
    return s.replace("_", " ").title().replace(" ", "")




conn = psycopg2.connect(database="smarket", user="smarket", password="smarket")

print "Conectado"

cur = conn.cursor()

sql = "SELECT tablename FROM pg_catalog.pg_tables WHERE tableowner = 'smarket';"


cur.execute(sql)
tables = cur.fetchall()

for t in tables:
    tabla = t[0]
    sql = "SELECT column_name, data_type FROM information_schema.columns WHERE table_name = '%s'" %tabla
    cur.execute(sql)
    esquema = cur.fetchall()

    datos = []

    for e in esquema:
        if e[0] != "id" and e[0].endswith("id"):
            dato = e[0].replace("_id", "") + ":belongs_to"
            datos.append(dato)
        elif e[0] != "id":
            dato = e[0] + ":" + toRails(e[1])
            datos.append(dato)

    argumentos = ["rails", "g", "scaffold", nombre(tabla)]

    argumentos = argumentos + datos

    retorno = check_output(argumentos)
    print retorno

    lineas = retorno.split("\n")


#    for l in lineas:
#        if l.find("db/migrate") == -1:
#            continue
#        else:
#            i = l.find("db/migrate")
#            migrate = l[i:]
#            f = open(migrate, "w")
#            f.close()

    

    f = open("app/models/%s.rb" %(tabla))
    lineas = f.read().split("\n")

    f = open("app/models/%s.rb" %(tabla), "w")

    f.write(lineas[0] + "\n")
    f.write("  self.table_name = '%s'\n" %tabla)
    f.write("  self.primary_key = 'id'\n")
    
    for l in lineas[1:]:
        f.write(l + "\n")

    f.close()

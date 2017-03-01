import pyodbc

class DataAccess(object):

	def __init__(self):
		pass

	def connect(self):
		conn = pyodbc.connect('Driver={SQL Server};Server=vsqldesa;Database=sarbot;uid=sa;pwd=Weekmark@2711')
		cur = conn.cursor()
		cur.execute("select * from Marca")
		for row in cur:
			print row.TipoCategoria  + " " + row.TipoCategoriaDescripcion

		conn.close()




			
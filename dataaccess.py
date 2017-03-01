import pypyodbc

class DataAccess(object):

	def __init__(self):
		pass

	def connect(self):
		connection = pypyodbc.connect('Driver={SQL Server};'
                                'Server=localhost;'
                                'Database=sonar;'
                                'uid=sa;pwd=12345')
		connection.close()




			
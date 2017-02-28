class FileWriter(object):

	def __init__(self):
		self.outfile=None	
	
	def open(self):
		self.outfile = open('c://marcas.txt','w+')

	def  save(self, registros):
		self.outfile.write(registros)
		
	def  close(self):
		self.outfile.close()

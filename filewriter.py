import os

class FileWriter(object):

	def __init__(self, nameFile):
		pathFolder = os.path.dirname(__file__)
		self.ruta = os.path.join(pathFolder, nameFile)
		print self.ruta
		self.outfile=None	
	
	def open(self):
		self.outfile = open(self.ruta,'w+')

	def  save(self, registros):
		self.outfile.write(registros)
		
	def  close(self):
		self.outfile.close()

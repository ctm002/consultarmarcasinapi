import os

class FileWriter(object):

	def __init__(self):
		pass
		
	def open(self, nameFile):
		pathFolder = os.path.dirname(__file__)
		ruta = os.path.join(pathFolder, nameFile)
		self.outfile = open(ruta,'w+')

	def  save(self, registros):
		self.outfile.write(registros)
		
	def  close(self):
		self.outfile.close()

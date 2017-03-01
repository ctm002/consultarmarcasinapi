import json

class RespuestaConsultaSolicitud(object):
	
	def __init__(self, dataJson):
		self.__dict__= json.loads(dataJson)
		data = json.loads(dataJson)
		dicData = json.loads(data['d'],"utf-8")
		self.Hash = dicData['Hash']
		self.dicMarca = dicData['Marca']
		print self.dicMarca

	def getHash(self):
		return self.Hash

	def getTipoMarca(self):
		return self.dicData['TipoCategoria']

	def getTipoCategoriaDescripcion(self):
		return self.dicMarca['TipoCategoriaDescripcion']

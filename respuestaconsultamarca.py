import json

class RespuestaConsultaMarca(object):
	
	def __init__(self, j):
		self.__dict__= json.loads(j)
		data = json.loads(j, "utf-8")
		values = json.loads(data['d'])
		self.Hash = values['Hash']
		self.NroSolicitud = values['Marcas'][0]['cell'][0]

	def getHash(self):
		return self.Hash

	def getNroSolicitud(self):
		return self.NroSolicitud

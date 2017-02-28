import json
from parametros import Parametros

class ParametrosConsultaSolicitud(Parametros):

	def __init__(self, pHash, pIDW, pNroSolicitud):
		self.Hash = pHash
		self.IDW = pIDW
		self.numeroSolicitud = pNroSolicitud

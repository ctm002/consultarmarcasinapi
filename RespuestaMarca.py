import json

class RespuestaMarca(object):
	def __init__(self, j):
		self.__dict__=json.loads(j)
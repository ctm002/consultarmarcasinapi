import json
class Convert(object):

	def __init__(self):
		pass
	
	def tojson(self, params):
		return json.dumps(params.__dict__)
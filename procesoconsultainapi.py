# -*- coding: utf-8 -*-
import urllib2
import urllib
import cookielib
import re
import json
import time
import random

cookies = cookielib.LWPCookieJar()
handlers = [
	urllib2.HTTPHandler(),
	urllib2.HTTPSHandler(),
	urllib2.HTTPCookieProcessor(cookies)
]
opener = urllib2.build_opener(*handlers)

def fetch(uri):
	# user_agent = "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KhTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"  
	# h = {"User-Agent": user_agent}
	request = urllib2.Request(uri)
	return opener.open(request)

def get_cookie():
	for cookie in cookies:
	   if "ASP.NET_SessionId"==cookie.name:
	   		return cookie.name + "=" +  cookie.value

def extraer_id_and_hash(pagina):
	patron = re.compile(r"^\s*setHash\s*\(\s*['\"]([0-9a-f]*)['\"]\s*,\s*['\"]([0-9]*)['\"]\s*\)\s*;", re.MULTILINE)
	matcher = patron.search(pagina)
	valores = {}
	valores['hash'] = matcher.group(1) 
	valores['id'] =  matcher.group(2)
	return valores

def buscar_marcas_by(registro, cookie, value_hash, value_id):
	user_agent = "Mozilla/5.0"  
	content_type = "application/json"
	referer = 'http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx'
	cookie =  cookie
	url = "http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx/FindMarcas"
	consultaMarca = ConsultaMarca(value_id,value_hash,registro)
	data_encode = json.dumps(consultaMarca.__dict__)
	request = urllib2.Request(url, data_encode, headers = {"User-Agent":user_agent,"Content-Type":content_type,"Cookie":cookie, "Referer" : referer})
	response = opener.open(request)
	return response.read().decode('utf-8')

class ConsultaMarca(object):

	def __init__(self, pidw, phash, param2):
		self.IDW = pidw
		self.Hash = phash
		self.LastNumSol = 0
		self.param1 = ""
		self.param2 = param2
		self.param3 = ""
		self.param4 = ""
		self.param5 = ""
		self.param6 = ""
		self.param7 = ""
		self.param8 = ""
		self.param9 = ""
		self.param10 = ""
		self.param11 = ""
		self.param12 = ""
		self.param13 = ""
		self.param14 = ""
		self.param15 = ""
		self.param16 = ""
		self.param17 = "1"

#App Principal
uri = "http://200.55.216.86:8080/Marca/BuscarMarca.aspx"
res = fetch(uri)
page_html = res.read()
datos = extraer_id_and_hash(page_html)
value_id = datos['id']
value_hash = datos['hash']
cookie = get_cookie()

for r in xrange(1181415,1181420):
	marca_json = buscar_marcas_by(r, cookie, value_hash, value_id)
	print(marca_json)	
	cantidad_segundos_espera = random.randint(1, 10)
	print(cantidad_segundos_espera)
	time.sleep(cantidad_segundos_espera)

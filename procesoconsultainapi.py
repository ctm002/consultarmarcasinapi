# -*- coding: utf-8 -*-
import urllib2
import urllib
import cookielib
import re
import json
import time
import random
from ConsultaMarca import ConsultaMarca
from RespuestaMarca import RespuestaMarca

cookies = cookielib.LWPCookieJar()
handlers = [
	urllib2.HTTPHandler(),
	urllib2.HTTPSHandler(),
	urllib2.HTTPCookieProcessor(cookies)
]
opener = urllib2.build_opener(*handlers)

def fetch(uri):
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
	print marca_json
	if marca_json.find("ErrorMessage") == -1:
		marca_respuesta = RespuestaMarca(marca_json)
		d = json.loads(marca_respuesta.d)
		value_hash=d['Hash']

	cantidad_segundos_espera = random.randint(1, 10)
	time.sleep(cantidad_segundos_espera)

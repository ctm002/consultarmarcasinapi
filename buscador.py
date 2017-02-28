import urllib2
import urllib
import cookielib
import re
import json
from parametrosconsultamarca import ParametrosConsultaMarca
from parametrosconsultasolicitud import ParametrosConsultaSolicitud
from respuestaconsultamarca import RespuestaConsultaMarca

class Buscador(object):

	def  __init__(self):
		self.cookies = cookielib.LWPCookieJar()
		self.opener = urllib2.build_opener(*[
			urllib2.HTTPHandler(),
			urllib2.HTTPSHandler(),
			urllib2.HTTPCookieProcessor(self.cookies)
			])

		self.html = ""
		self.cookie = ""
		self.userAgent = "Mozilla/5.0"  
		self.contentType = "application/json; charset=UTF-8"
		self.referer = 'http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx'

	def fetch(self, uri):
		request = urllib2.Request(uri)
		self.html = self.opener.open(request).read()
		self.cookie = self.getCookie()
		return self.html

	def getCookie(self):
		for cookie in  self.cookies:
		   if "ASP.NET_SessionId" == cookie.name:
		   		return cookie.name + "=" +  cookie.value

	def getHeader(self):
		 return {"User-Agent":self.userAgent,"Content-Type":self.contentType,"Cookie":self.cookie, "Referer" : self.referer}

	def buscarByRegistro(self, url, pNroRegistro, pHash, pID):
		parametros_consulta_marca = ParametrosConsultaMarca(pID, pHash, pNroRegistro)
		parametros_consulta_marca_encode = json.dumps(parametros_consulta_marca.__dict__)
		request = urllib2.Request(url, parametros_consulta_marca_encode, headers = self.getHeader())
		response = self.opener.open(request)
		return response.read().decode('utf-8')

	def buscarBySolicitud(self, url, pNroSolicitud, pHash, pID):
		parametros_consulta_solicitud = ParametrosConsultaSolicitud(pHash, pID, pNroSolicitud)
		parametros_consulta_solicitud_encode = json.dumps(parametros_consulta_solicitud.__dict__)
		request = urllib2.Request(url, parametros_consulta_solicitud_encode, headers = self.getHeader())
		response = self.opener.open(request)
		return response.read()
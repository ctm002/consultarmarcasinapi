import urllib2
import urllib
import cookielib
import re
import json
from parametrosconsultamarca import ParametrosConsultaMarca
from parametrosconsultasolicitud import ParametrosConsultaSolicitud
from respuestaconsultamarca import RespuestaConsultaMarca

class Request(object):

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

	def getCookieByName(self, name):
		for cookie in  self.cookies:
		if name == cookie.name:
		   return cookie.name + "=" +  cookie.value

	def setCookie(self,name):
		self.cookie = name

	def getHeader(self):
		return {
			"User-Agent":self.userAgent,
			"Content-Type":self.contentType,
			"Cookie":self.cookie, 
			"Referer" : self.referer
		}

	def setURL(self, url):
		self.URL = url

	def setParametros(self, parametros):
		self.parametros = parametros

	def getDownloadData(self):
		request = urllib2.Request(self.URL, self.parametros, headers = self.getHeader())
		response = self.opener.open(request)
		return response.read()
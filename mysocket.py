import socket
import re
import fcntl
import struct

from filewriter import FileWriter
from crawler import Crawler
from parametrosconsultamarca import ParametrosConsultaMarca
from parametros import Parametros
from convert import Convert

def get_ip_address(ifname):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    return socket.inet_ntoa(fcntl.ioctl(
        s.fileno(),
        0x8915,
        struct.pack('256s', ifname[:15])
    )[20:24])

def setParametros(params):
	self.parametos = params


def setURL(self, url):
	self.URL = url

def addCookie(cookie):
	self.cookie = cookie




def post(url):
	host = "ion.inapi.cl"
	port = 8080
	headers = """\
	POST {url} HTTP/1.1\nHost:{host}\nConnection:{connection}\nContent-Length:{content_length}\nUserAgent:{user_agent}\nContent-Type:{content_type}\nReferer:{referer}\nCookie:{cookie};\n\n"""

	pHash, pIDW, pCookie = get("/Marca/BuscarMarca.aspx")
	parametros = Convert().tojson(ParametrosConsultaMarca(pIDW, pHash,1181416))
	body_bytes = parametros.encode('utf-8')
	header_bytes = headers.format(
	    url = url,
	    content_type="application/json; charset=utf-8",
	    content_length=len(body_bytes),
	    user_agent="Mozilla/5.0",
	    connection="keep-alive",
	    cookie=pCookie,
	    host=str(host) + ":" + str(port),
	    referer="http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx"
	).encode('utf-8')

	payload = header_bytes + body_bytes
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.bind((get_ip_address('ppp0'), 0))
	s.connect((host, port))
	s.send(payload)
	result = s.recv(1024)
	print result



def get(url):
	host = "ion.inapi.cl"
	port = 8080

	headers = b"GET {url} HTTP/1.1\nHost:{host}\nConnection: close\n\n"
	header_bytes = headers.format(
		url=url,
	    host=str(host) + ":" + str(port)
	).encode('iso-8859-1')

	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.bind((get_ip_address('ppp0'), 0))
	s.connect((host, port))
	s.send(header_bytes)
	result = s.recv(4096)
	total_data=[]
	total_data.append(result)
	while (len(result) > 0):
	    result = s.recv(4096)
	    if (len(result) > 0):
	    	total_data.append(result)

	html = ' '.join(total_data)
	pHash, pIDW = Crawler().extraer(html)
	nameCookie = "ASP.NET_SessionId="
	return pHash, pIDW, nameCookie + Crawler().getValueCookie(nameCookie, html)

	# fileWrite = FileWriter()
	# fileWrite.open("default.aspx")
	# fileWrite.save(html)
	# fileWrite.close()

pHash, pIDW, nameCookie = get("/Marca/BuscarMarca.aspx")

#print pHash, pIDW, nameCookie

#post("http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx/FindMarcas")


class MySocket(object):

	def __init__(self, host, port, interface):
		self.port = port
		self.host = host
		#self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		#self.socket.bind((get_ip_address(interface), 0))

	def send(self):
		payload = ""
		if (self.metodo == "POST"):
			headers = """\
				POST {url} HTTP/1.1\nHost:{host}\nConnection:{connection}\nContent-Length:{content_length}\nUserAgent:{user_agent}\nContent-Type:{content_type}\nReferer:{referer}\nCookie:{cookie};\n\n"""
			header_bytes = headers.format(
		    	url = self.URL,
		    	content_type="application/json; charset=utf-8",
		    	content_length=len(self.parametros),
		    	user_agent="Mozilla/5.0",
		    	connection="keep-alive",
		    	cookie= self.cookie,
		    	host=str(self.host) + ":" + str(self.port),
		    	referer="http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx"
			).encode('utf-8')
			payload = header_bytes + self.parametros
		else:
			headers = b"GET {url} HTTP/1.1\nHost:{host}\nConnection: close\n\n"
			header_bytes = headers.format(
				url=self.URL,
		    	host=str(self.host) + ":" + str(self.port)
			).encode('utf-8')
			payload = header_bytes

		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.bind((get_ip_address('ppp0'), 0))
		s.connect((self.host, self.port))
		s.send(payload)
		result = s.recv(1024)
		total_data=[]
		total_data.append(result)
		while (len(result) > 0):
		    result = s.recv(4096)
		    if (len(result) > 0):
		    	total_data.append(result)

		self.html= ' '.join(total_data)

	def get_ip_address(self, ifname):
	    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	    return s.inet_ntoa(fcntl.ioctl(
	        s.fileno(),
	        0x8915,
	        struct.pack('256s', ifname[:15])
	    )[20:24])

	def setURL(self, url):
		self.URL = url

	def setMetodo(self, metodo):
		self.metodo = metodo

	def setParametros(self, parametros):
		self.parametros = parametros

	def getValues(self):
		pHash, pIDW = Crawler().extraer(self.html)
		nameCookie = "ASP.NET_SessionId="
		return pHash, pIDW, nameCookie + Crawler().getValueCookie(nameCookie, self.html)


mySocket = MySocket("ion.inapi.cl", 8080, "ppp0")
mySocket.setMetodo("GET")
mySocket.setURL("/Marca/BuscarMarca.aspx")
mySocket.setParametros("")
mySocket.send()
pHash, pIDW, cookie = mySocket.getValues()
print pHash, pIDW, cookie 

#parametros = Convert().tojson(ParametrosConsultaMarca(pIDW, pHash,1181416))

#print  get("/Marca/BuscarMarca.aspx")

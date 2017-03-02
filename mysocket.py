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

def Post():
	host = "ion.inapi.cl"
	port = 8080
	headers = """\
	POST http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx/FindMarcas HTTP/1.1\nHost:{host}\nConnection:{connection}\nContent-Length:{content_length}\nUserAgent:{user_agent}\nContent-Type:{content_type}\nReferer:{referer}\nCookie:{cookie};\n\n"""

	pHash, pIDW, pCookie = Get() 
	parametros = Convert().tojson(ParametrosConsultaMarca(pIDW, pHash,1181416))
	body_bytes = parametros.encode('utf-8')
	header_bytes = headers.format(
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
	ip = (get_ip_address('eth0'), 0)
	print ip
	s.bind(ip)
	s.connect((host, port))
	s.send(payload)
	result = s.recv(1024)

def Get():
	host = "ion.inapi.cl"
	port = 8080


	total_data=[]
	headers = b"GET /Marca/BuscarMarca.aspx HTTP/1.1\nHost:{host}\nConnection: close\n\n"
	header_bytes = headers.format(
	    host=str(host) + ":" + str(port)
	).encode('iso-8859-1')

	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((host, port))
	s.send(header_bytes)
	result = s.recv(4096)
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

Post()


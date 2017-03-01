import socket
from filewriter import FileWriter
from crawler import Crawler
import re


def Get():
	host = "ion.inapi.cl"
	port = 8080

	# headers = """\
	# GET /Marca/BuscarMarca.aspx HTTP/1.1\r
	# Content-Type: {content_type}\r
	# Content-Length: {content_length}\r
	# Host: {host}\r
	# Connection: close\r
	# \r\n"""

	# body = 'userName=Ganesh&password=pass'                                 
	# body_bytes = body.encode('ascii')
	# header_bytes = headers.format(
	#     content_type="application/json; charset=UTF-8",
	#     content_length=len(body_bytes),
	#     host=str(host) + ":" + str(port)
	# ).encode('iso-8859-1')

	# payload = header_bytes + body_bytes
	# socket.send (payload)

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

	print pHash
	print pIDW
	nameCookie = "ASP.NET_SessionId="
	print nameCookie + Crawler().getValueCookie(nameCookie, html)

	fileWrite = FileWriter()
	fileWrite.open("default.aspx")
	fileWrite.save(html)
	fileWrite.close()


Get()
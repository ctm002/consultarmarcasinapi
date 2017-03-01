# -*- coding: utf-8 -*-
import re
import json
import time
import random
from request import Request
from respuestaconsultamarca import RespuestaConsultaMarca
from respuestaconsultasolicitud import RespuestaConsultaSolicitud
from filewriter import FileWriter
from crawler import Crawler
from parametros import Parametros
from convert import Convert
from parametrosconsultasolicitud import ParametrosConsultaSolicitud
from parametrosconsultamarca import ParametrosConsultaMarca


def process():
	request = Request()
	request.setURL("http://200.55.216.86:8080/Marca/BuscarMarca.aspx")
	request.setParametros(None)
	html = request.getDownloadData()
	pHash, pIDW = Crawler().extraer(html)
	cookie = request.getCookie("ASP.NET_SessionId")

	str_list = []
	for nroRegistro in xrange(1181415,1181420):
		request.setURL("http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx/FindMarcas")
		request.setCookie(cookie)
		parametros = Convert().tojson(ParametrosConsultaMarca(pIDW, pHash,nroRegistro))
		request.setParametros(parametros)
		marcaJSON = request.getDownloadData()

		if marcaJSON.find("ErrorMessage") == -1:
			marca_respuesta = RespuestaConsultaMarca(marcaJSON)
			marca_respuesta_json = json.loads(marca_respuesta.d,"utf-8")
			pHash = marca_respuesta_json['Hash']
			pMarca = marca_respuesta_json['Marcas'][0]	
			pNroSolicitud = pMarca['cell'][0]

			#Buscamos por numero de solicitud
			request.setURL("http://ion.inapi.cl:8080/Marca/BuscarMarca.aspx/FindMarcaByNumeroSolicitud")
			request.setCookie(cookie)
			request.setParametros(Convert().tojson(ParametrosConsultaSolicitud(pHash, pIDW, pNroSolicitud)) )
			detalleMarca = request.getDownloadData()
			if detalleMarca.find("ErrorMessage") == -1:
				
				solicitud_respuesta = RespuestaConsultaSolicitud(detalleMarca)
				solicitud_respuesta_json = json.loads(solicitud_respuesta.d,"utf-8")
				pHash = solicitud_respuesta_json['Hash']
				pMarcaDetalle =  solicitud_respuesta_json['Marca']
				# tipoCategoria = pMarcaDetalle['TipoCategoria']
				# tipoCategoriaDescripcion = pMarcaDetalle['TipoCategoriaDescripcion'].encode("utf-8")
				# tipoCobertura = pMarcaDetalle['TipoCobertura']
				# tipoCoberturaDescripcion = pMarcaDetalle['TipoCoberturaDescripcion'].encode("utf-8")
				# tipoMarca = pMarcaDetalle['TipoMarca']
				# tipoMarcaDescripcion = pMarcaDetalle['TipoMarcaDescripcion'].encode("utf-8")
				# estado = pMarcaDetalle['Estado']
				# estadoIPAS = pMarcaDetalle['EstadoIPAS']
				# estadoDescripcion = pMarcaDetalle['EstadoDescripcion'].encode("utf-8")
				# numeroSolicitud = pMarcaDetalle['NumeroSolicitud']
				# numeroRegistro = pMarcaDetalle['NumeroRegistro']
				# fechaPresentacion = pMarcaDetalle['FechaPresentacion']
				# fechaPublicacion = pMarcaDetalle['TipoCategoria']
				# fechaRegistro = pMarcaDetalle['FechaPublicacion']
				# denominacion = pMarcaDetalle['Denominacion'].encode("utf-8")
				# traduccion = pMarcaDetalle['Traduccion'].encode("utf-8")
				# etiqueta = pMarcaDetalle['Etiqueta']
				# audio = pMarcaDetalle['Audio']
				# etiquetaDescripcion = pMarcaDetalle['EtiquetaDescripcion'].encode("utf-8")

				# linea = "{0};{1};{2};{3};{4};{5};{6};{7};{8};{9};{10};{11};{12};{13};{14};{15};{16};{17};{18}\n"
				# linea = linea.format(
				# 	tipoCategoria,tipoCategoriaDescripcion,
				# 	tipoCobertura,tipoCoberturaDescripcion,
				# 	tipoMarca,tipoMarcaDescripcion,
				# 	estado,estadoIPAS,estadoDescripcion,numeroSolicitud,
				# 	numeroRegistro,fechaPresentacion,
				# 	fechaPublicacion,fechaRegistro,denominacion,
				# 	traduccion,
				# 	etiqueta,
				# 	audio,
				# 	etiquetaDescripcion)
				str_list.append(solicitud_respuesta.d.encode("utf-8"))
				tiempoDeEspera = random.randint(2, 5)
				time.sleep(tiempoDeEspera)

	fileWrite = FileWriter()
	fileWrite.open()
	fileWrite.save("["+ ",".join(str_list) +"]")
	fileWrite.close()
process()
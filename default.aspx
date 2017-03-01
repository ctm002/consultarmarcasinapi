HTTP/1.1 200 OK
Cache-Control: private
Content-Length: 63705
Content-Type: text/html; charset=utf-8
Server: Microsoft-IIS/8.5
X-AspNet-Version: 2.0.50727
Set-Cookie: ASP.NET_SessionId=almztbikyyjz0tjnwhngabnb; path=/; HttpOnly
X-Powered-By: ASP.NET
Date: Wed, 01 Mar 2017 21:51:57 GMT
Connection: close



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Consulta de Marca
</title>
    <script type="text/javascript">
        function CargaTitulo() {
            document.getElementById('tituloFormulario').innerHTML = document.title;
        }
    </script>
    <script type="text/javascript" src='/js/jquery-1.7.2.min.js'></script>
    <!--	<script type="text/javascript" src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.js'></script>-->
    <script type="text/javascript" src='/js/jquery-ui-1.8.10.custom.min.js'></script>
    <script type="text/javascript" src='/js/jquery.ui.datepicker-es.js'></script>
    <script type="text/javascript" src='/js/jquery.ajax_upload.0.6.js'></script>
    <script type="text/javascript" src='/js/jquery.tooltip.min.js'></script>
    <script type="text/javascript" src='/js/jquery.validate.min.js'></script>
    <script type="text/javascript" src='/js/jquery.jPrintArea.js'></script>
    <script type="text/javascript" src='/js/messages_es.js'></script>
    <script type="text/javascript" src='/js/validaciones.js'></script>
    <script type="text/javascript" src='/js/jquery.Rut.min.js'></script>
    <script type="text/javascript" src='/js/jquery.base64.min.js'></script>
    <script type="text/javascript" src='/js/json2.js'></script>
    <script type="text/javascript" src='/js/Alertas.js'></script>
    <script type="text/javascript" src='/js/Varios.js'></script>
    
    <script src="../js/RutUtilities.js" type="text/javascript"></script>
    <script src="js/BuscarMarca.js" type="text/javascript"></script>
    <script src="../js/paging.js" type="text/javascript"></script>
    <style type="text/css">
        #tablePagination
        {
            background-color: #DCDCDC;
            font-size: 0.8em;
            padding: 0px 5px;
            height: 20px;
        }
        #tablePagination_paginater
        {
            margin-left: auto;
            margin-right: auto;
        }
        #tablePagination img
        {
            padding: 0px 2px;
        }
        #tablePagination_perPage
        {
            float: left;
        }
        #tablePagination_paginater
        {
            float: right;
        }
    </style>
<link rel="stylesheet" type="text/css" href="../Css/custom-theme/jquery-ui-1.8.16.custom.css" />
    <!-- CSS reemplazado por los 6 siguientes links ...-->
    <!--<link type="text/css" rel="stylesheet" href="http://www.inapi.cl/portal/institucional/css/screen.css" />-->
    <link rel="stylesheet" type="text/css" href="../Css/tipografia/tipografias.css" /><link rel="stylesheet" type="text/css" href="../Css/layout.css" /><link rel="stylesheet" type="text/css" href="../Css/header.css" /><link rel="stylesheet" type="text/css" href="../Css/nav.css" /><link rel="stylesheet" type="text/css" href="../Css/main.css" /><link rel="stylesheet" type="text/css" href="../Css/footer.css" />
    <!-- <link href="../Css/screen.css" rel="stylesheet" type="text/css" /> -->
    <link href="../Css/Formularios.css" rel="stylesheet" type="text/css" /><link href="../Css/jquery.tooltip.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #footer
        {
            min-height: 140px;
        }
        .info, .success, .warningalert, .customalert
        {
            border: 1px solid;
            border-style: dotted;
            margin-top: 10px;
            margin-bottom: 10px !important;
            padding: 15px 10px 15px 50px !important;
            background-repeat: no-repeat;
            background-position: 10px center;
        }
        .succ ess
        {
            color: #4F8A10;
            background-color: #DFF2BF;
            background-image: url('/icon/success.png');
        }
        .info
        {
            color: #00529B;
            background-color: #BDE5F8;
            background-image: url('/icon/info.png');
        }
        .warningalert
        {
            color: #9F6000;
            background-color: #FEEFB3;
            background-image: url('/icon/warning.png');
        }
        .customalert
        {
            color: #0776C5;
            background-color: #E1E7EB;
            background-image: url('/icon/warning.png');
        }
    </style>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
	m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-55154893-1', 'auto');
        ga('require', 'displayfeatures');
        ga('send', 'pageview');
    </script>
</head>
<body onload="CargaTitulo();">
    <div id="loading">
        <span id="loadingBackground"></span>
        <br />
        <span id="loadingImg">Cargando...</span>
    </div>
    <div id="dialog-message" title="Info" style="display: none;">
        <p>
            <span class="ui-icon ui-icon-circle-check" style="float: left; margin: 0 7px 50px 0;">
            </span><span id="message" style="text-align: justify;"></span>
        </p>
    </div>
    <!-- script para header ree mplazado por código en duro -->
    
    <!--__NTG_BEGIN_HEADER__-->
    <div id="container">
        <div id="header">
            <!--begin-box:w3_tr_logoINAPI::675:Caja en blanco-->
            <!--loc('* Recuadros de artículos')-->
            <div id="recuadros_articulo_675">
                <div>
                    <h1>
                        <a href="http://www.inapi.cl/portal/institucional/600/w3-channel.html" title="Sitio web del Instituto Nacional de Propiedad Industrial del Gobierno de Chile">
                            Instituto Nacional de Propiedad Industrial (INAPI)</a>
                    </h1>
                </div>
            </div>
            <!--end-box-->
            <!--begin-box:w3_tr_menuauxiliar::787:Muestra el menú auxiliar en todas las páginas de este canal.-->
            <!--loc('* Código HTML libre dentro de la página.')-->
            <div class="menuauxiliar">
                <ul>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyname-511.html">
                        Acerca de INAPI</a></li>
                    <li><a href="http://www.inapi.cl/portal/prensa/607/w3-channel.html">Sala de Prensa</a></li>
                    <li><a href="http://www.inapi.cl/portal/publicaciones/608/w3-channel.html">Biblioteca
                        digital</a></li>
                    <li><a href="http://www.inapi.cl/portal/normativa/603/w3-channel.html">Legislación</a></li>
                    <li><a href="http://www.inapi.cl/portal/orientacion/602/w3-propertyvalue-828.html">Preguntas
                        frecuentes</a></li><li><a href="http://www.inapi.cl/portal/orientacion/602/w3-propertyname-509.html">
                            Glosario</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-829.html">
                        Contacto</a></li>
                </ul>
            </div>
            <!--end-box-->
        </div>
        <div id="nav">
            <!--begin-box:w3_tr_menu_principal_TRAMITES::615:Muestra el menu principal-->
            <!--loc('* Código HTML libre dentro de la página.')-->
            <div class="menu-principal">
                <ul>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-channel.html">INICIO</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-909.html"
                        title="Comprende, principalmente, creaciones asociadas a una finalidad comercial. De acuerdo a la Ley 19.039 son derechos de propiedad industrial las patentes de invención, modelos de utilidad, diseños y dibujos industriales, esquemas de trazado o topografías de circuitos integrados, marcas comerciales, indicaciones geográficas y denominaciones de origen.">
                        Propiedad Industrial</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-878.html"
                        title="Una marca comercial es todo signo visible, novedoso y característico que permite distinguir productos, servicios o establecimientos comerciales o industriales de sus similares, tales como nombres seudónimos, palabras, expresiones arbitrarias o de fantasía, combinación de colores, viñetas, etiquetas, o una combinación de estos elementos, y las frases de propaganda o publicitarias. Estas últimas sólo tendrán protección en el caso de que vayan unidas o adscritas a una marca ya registrada del producto, servicio o establecimiento comercial o industrial en relación con el cual se utilice, debiendo necesariamente contener la marca registrada que será objeto de publicidad.">
                        Marcas</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-879.html"
                        title="Las Indicaciones Geográficas y las Denominaciones de Origen (IG/DO) protegen ciertos productos caracterizados por provenir de cierta y determinada región geográfica  o por estar producido de la forma y con la técnica de cierta y determinada región geográfica. En este sentido, como títulos de propiedad industrial se tratan de verdaderos signos distintivos de determinados productos.">
                        IG/DO</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-877.html"
                        title="Una patente es un derecho de exclusividad concedido por el Estado, para proteger y explotar una invención por el tiempo que determine la Ley.">
                        Patentes</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-880.html"
                        title="Los diseños y los dibujos industriales son títulos de propiedad industrial que protegen creaciones estéticas que agregan valor a productos determinados.">
                        Diseños</a></li>
                    <li class="current"><a href="http://www.inapi.cl/portal/tramites/601/w3-channel.html"
                        title="La nueva plataforma de INAPI para la tramitación de marcas y patentes">Trámites
                        y Servicios</a></li>
                    <li><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-907.html"
                        title="Sitio de INAPI Proyecta, la comunidad de la Propiedad Industrial en Chile">
                        INAPI Proyecta</a></li>
                </ul>
            </div>
            <!--end-box-->
        </div>
        <div id="main">
            <div class="col12">
                <div class="navegacion2">
                    <ul>
                        <span id="ctl00_SiteMapPath1" class="corrige_ margen_navegacion"><a href="#ctl00_SiteMapPath1_SkipLink"><img alt="Omitir vínculos de navegación" height="0" width="0" src="/WebResource.axd?d=teTBa6bXV329O1CLWyzRfWldCZ4LX5g3ULK8LAVAqOrA6f9jssKVa2lt1E96mMFJ2Mz47icTIGaMyi9AxyBV4WsdH2Q1&amp;t=635589327570790873" border="0" /></a><span><a title="Inicio" href="http://www.inapi.cl">Inicio</a></span><span> &gt;</span><span><a>Tr&#225;mites y servicios</a></span><span> &gt;</span><span><a>MARCAS</a></span><span> &gt;</span><span><a title="Consulta de Marca." href="/Marca/BuscarMarca.aspx">Buscar en  Base de Datos</a></span><a id="ctl00_SiteMapPath1_SkipLink"></a></span>
                    </ul>
                </div>
                <div class="titulovalor" style="margin-top: -3px;">
                    <h1 class="titulo">
                        Trámites y servicios - <span id="tituloFormulario"></span><span style="float: right;
                            font-size: 12px; vertical-align: bottom;">
                            
                            
                            <a id="EditUser" href="/EditarUsuario.aspx" style='display:none'
                                title="Editar Datos">
                                <img src="/icon/edit_user.png" height="21px" width="21px" />
                            </a><a id="Support" href="http://soporte.inapi.cl/" style='display:none'
                                title="Soporte TIC" target="_blank">
                                <img src="/icon/soporte.png" height="21px" width="21px" />
                            </a><a id="CloseSession" href="/LogOut.aspx" style='display:none'
                                title="Cerrar sesión">
                                <img src="/icon/cerrar_sesion.gif" height="21px" width="21px" />
                            </a></span>
                    </h1>
                </div>
            </div>
            <span class="clearfix"></span>
            <div class="col9">
                <div id="maincontent" class="formularios">
                    <div style="text-align: left; color: Red; display: none">
                        <strong>Aviso:</strong><br />
                        Por trabajos por parte de Tesorería General de la republica hoy jueves 06/12 <strong>
                            NO</strong> habrá servicio de pago desde las 20:00hrs hasta las 24:00. Lamentamos
                        el inconveniente.
                    </div>
                    <div class="warningalert">
                        <p>
                            <b>¡Nuevo Servicio!</b> Renovaciones de marcas en 1 click. Reduzca de 5 a 1 los
                            pasos que componen este proceso y en minutos estará lista su operación. <a href="http://www.inapi.cl/portal/prensa/607/w3-article-4617.html">
                                (ver más)</a></p>
                    </div>
                    
    <div>
        <fieldset>
            <div id="tabs">
                <ul>
                    <li><a href="#tab1">Marca</a></li>
                    <li><a href="#tab2">Anotación</a></li>
                    <!-- <li><a href="#tab3">Instancias Administrativas</a></li> -->
                </ul>
                <div id="tab1">
                    <!--Content-->
                    <div id="accordion">
                        <h3>
                            <a href="#">Buscador</a></h3>
                        <div>
                            <fieldset>
                                <form id="frmBuscarMarca" action="">
                                <table style="width: 90%;">
                                    <tr>
                                        <td style="width: 70px;">
                                            Buscar por:
                                        </td>
                                        <td>
                                            <p>
                                                <label class="label">
                                                    N° Solicitud:</label>
                                                 <input id="txtSolicitud" name="txtSolicitud" type="text" maxlength="7" class="inputCorto"
                                                    onkeypress="return buscarMarca(event)" />
                                            </p>
                                            <p>
                                                <label class="label">
                                                    N° Registro:</label>
                                                <input id="txtRegistro" name="txtRegistro" type="text" maxlength="7" class="inputCorto"
                                                    onkeypress="return buscarMarca(event)" />
                                            </p>
                                            <p>
                                                <label class="label">
                                                    Signo:</label>
                                                <input id="txtMarca" name="txtMarca" type="text" maxlength="100" class="inputLargo"
                                                    onkeypress="return buscarMarca(event)" /></p>
                                            <p style="margin-left: 160px; width: 50%;">
                                                <label title="Busca marcas con el signo exacto">
                                                    <input type="radio" name="group1" id="rd_1" value="1" title="Busca marcas con el signo exacto"
                                                        checked />
                                                    Exacta</label>
                                                <label title="Signo que contenga la palabra busca da">
                                                    <input type="radio" name="group1" id="rd_2" value="2" title="Signo que contenga la palabra buscada"
                                                        style="margin-left: 60px;" />
                                                    Contenga</label>
                                            </p>
                                            <p style="margin-left: 160px; width: 50%;">
                                                <label title="Signo que comience con la palabra buscada">
                                                    <input type="radio" name="group1" id="rd_3" value="3" title="Signo que comience con la palabra buscada" />
                                                    Comience con</label>
                                                <label title="Signo que termine con la palabra buscada">
                                                    <input type="radio" name="group1" id="rd_4" value="4" title="Signo que termine con la palabra buscada"
                                                        style="margin-left: 17px;" />
                                                    Termine con</label>
                                            </p>
                                            <p>
                                                <label class="label">
                                                    Titular:</label>
                                                <input id="txtTitular" name="txtTitular" type="text" maxlength="100" class="inputLargo"
                                                    onkeypress="return buscarMarca(event)" />
                                            </p>
                                            <div>
                                                <div class="expande label">
                                                    &nbsp; <span class="ui-icon ui-icon-plusthick"></span>criterios
                                                </div>
                                                <div id="dvOtros" style="display: none;">
                                                    <p>
                                                        <label class="label">
                                                            N° Clase:
                                                        </label>
                                                        <input id="txtClase" name="txtClase" type="text" maxlength="2" style="width: 20px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            N° Región:
                                                        </label>
                                                        <input id="txtRegion" name="txtRegion" type="text" maxlength="2" style="width: 20px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            Tipo Signo:
                                                        </label>
                                                        <select name="ddlTipoMarca" id="ddlTipoMarca" style="width: 100px;">
                                                            <option value=""></option>
                                                            <option value="D">DENOMINATIVA</option>
                                                            <option value="M">MIXTA</option>
                                                            <option value="F">ETIQUETA</option>
                                                             <option value="O">DENOMINACIONES DE ORIGEN</option>
                                                            <option value="G">INDICACIONES GEOGRAFICA</option>
                                                            <option value="S">SONORA</option>
                                                        </select>
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            Tipo Solicitud:
                                                        </label>
                                                        <select name="ddlTipoSolicitud" id="ddlTipoSolicitud" style="width: 100px;">
                                                            <option value=""></option>
                                                            <option value="1">PRODUCTO</option>
                                                            <option value="2">SERVICIO</option>
                                                            <option value="4">F. PROPAGANDA</option>
                                                            <option value="5">EST. COMERCIAL</option>
                                                            <option value="6">EST. INDUSTRIAL</option>
                                                        </select>
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            E stado Tramite:
                                                        </label>
                                                        <select name="ddlEstado" id="ddlEstado" style="width: 100px;">
                                                            <option value=""></option>
                                                            <option value="C">CONCEDIDA</option>
                                                            <option value="U">CADUCADAS</option>
                                                            <option value=" ">EN TRÁMITE</option>
                                                            <option value="N">RECHAZADAS</option>
                                                            <option value="V">VENCIDAS</option>
                                                            <option value="D">DESISTIDA</option>
                                                            <option value="A">ANULADA</option>
                                                        </select>
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            Fecha Presentación:
                                                        </label>
                                                        <input id="txtFechaPreD" name="txtFechaPreD" type="text" maxlength="10" style="width: 70px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                        hasta
                                                        <input id="txtFechaPreH" name="txtFechaPreH" type="text" maxlength="10" style="width: 70px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            Fecha Publicación:
                                                        </label>
                                                        <input id="txtFechaPubD" name="txtFechaPubD" type="text" maxlength="10" style="width: 70px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                        hasta
                                                        <input id="txtFechaPubH" name="txtFechaPubH" type="text" maxlength="10" style="width: 70px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            Fecha de Vigencia:
                                                        </label>
                                                        <input id="txtFechaRegD" name="txtFechaRegD" type="text" maxlength="10" style="width: 70px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                        hasta
                                                        <input id="txtFechaRegH" name="txtFechaRegH" type="text" maxlength="10" style="width: 70px;"
                                                            onkeypress="return buscarMarca(event)" />
                                                    </p>
                                                    <p>
                                                        <label class="label">
                                                            País del titular:
                                                         </label>
                                                        <select name="ddlResidente" id="ddlResidente" style="width: 100px;">
                                                            <option value=""></option>
                                                             <option value="0">CHILE</option>
                                                            <option value="1">OTRO</option>
                                                        </select>
                                                    </p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td align="right">
                                            <p class="form_button">
                                                <input id="btnBuscarMarca" type="button" value="Buscar" />
                                                <input id="hdnHash" type="hidden" />
                                                <input id="hdnIDW" type="hidden" />
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                                <div class="listaitemizada">
                                    <ul>
                                        <li>Ingrese uno o más criterios para realizar la búsqueda.</li></ul>
                                </div>
                                </form>
                            </fieldset>
                        </div>
                        <h3>
                            <a href="#">Lista de Aciertos</a></h3>
                        <div id="ResultadoMarca">
                            <table id="tblMarcasResult" class="tableList" style="width: 100%;">
                                <thead style="display: none;">
                                    <tr>
                                        <td style="width: 10%;" align="center">
                                            Solicitud
                                        </td>
                                        <td style="width: 10%;" align="center">
                                            Registro
                                        </td>
                                        <td style="width: 10%;" align="center">
                                            Clase
                                        </td>
                                        <td style="width: 35%;">
                                            Signo
                                        </td>
                                        <td style="width: 35%;">
                                            Titular
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div id="prev" class="floatLeft" style="display: none; cursor: pointer;">
                                &nbsp; <span class="ui-icon ui-icon-seek-prev"></span>Anterior
                            </div>
                            <div id="next" class="floatRight" style="display: none; cursor: pointer;">
                                &nbsp; Siguiente<span class="ui-icon ui-icon-seek-next"></span>&nbsp;
                            </div>
                            <div id="Laciertos" style="font-size: 11px; display: none;">
                                <div id="Aciertos">
                                </div>
                                <div id="CantidadAciertos">
                                </div>
                            </div>
                        </div>
                        <h3>
                            <a href="#">Detalle</a></h3>
                        <div>
                            <fieldset>
                                <div id="dvMarca" style="font-size: 11px; display:none;">
                                     <span id="dvTitulo" class="titulo" style="font-size: 150%;"></span>
                                    <br />
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style=" width: 50%;">
                                                <label class="label">
                                                    <b>Nº Solicitud:</b></label>
                                                <span id="dvNsolicitud"></span>
                                                <br />
                                                <label class="label">
                                                    <b>Nº Registro:</b></label>
                                                <span id="dvNregistro"></span>
                                                <br />
                                                <label class="label">
                                                    <b>Estado:</b></label>
                                                <span id="dvEstado"></span>
                                            </td>
                                            <td>
                                                <label class="label">
                                                    <b>Fecha Presentación:</b></label>
                                                <span id="dvFpresentacion"></span>
                                                <br />
                                                <label class="label">
                                                    <b>Fecha Publicación:</b></label>
                                                <span id="dvFpublicacion"></span> 
                                                <br />
                                                <label class="label">
                                                    <b>Fecha de Vigencia:</b></label>
                                                <span id="dvFregistro"></span>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <label class="titulo">
                                        Titular(s)/Solicitante(s)</label>
                                    <table id="tblTitulares" style="width: 590px;">
                                        <thead>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                    <br />
                                    <div id="pnlMostrarRepresentante">
                                        <label class="titulo">
                                            Representante</label>
                                        <table id="tblRepresentante" style="width: 590px;">
                                            <thead>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                            <tfoot>
                                            </tfoot>
                                        </table>
                                    </div>
                                    <div id="dialogViewRepresentante" class="dialog" title="Datos Representante" style="display: none;">
                                        <form id="frmRepresentanteView" action="">
                                        <fieldset>
                                            <p>
                                                <label class="label">
                                                    Nombre o Razón Social:<label class="error" for="txtNombreRepView" generated="true"></label>
                                                </label>
                                                <input type="text" id="txtNombreRepView" name="txtNombreRepView" maxlength="120"
                                                    class="floatLeft inputLargo" readonly />
                                            </p>
                                            <p>
                                                <label class="label">
                                                    País:<label class="error" for="txtPaisRepView" generated="true"></label>
                                                </label>
                                                <input type="text" id="txtPaisRepView" name="txtPaisRepView" maxlength="54" class="floatLeft inputLargo"
                                                    readonly />
                                            </p>
                                            <p>
                                                <label class="label">
                                                    Comuna:<label class="error" for="ddlComunaRepView" generated="true"></label>
                                                </label>
                                                <input type="text" id="ddlComunaRepView" name="ddlComunaRepView" maxlength="20" class="floatLeft inputLargo"
                                                    readonly />
                                            </p>
                                            
                                        </fieldset>
                                        </form>
                                    </div>
                                    <br />
                                     <p>
                                        <label class="titulo">
                                            Signo
                                        </label>
                                    </p>
                                    <div id="dvDetalleMarca"></div> 
                                    <br />
                                    <div id="dvMostrarPrioridad">
                                        <p>
                                            <label class="titulo">
                                                Prioridad</label>
                                        </p>
                                        <p>
                                            <label class="label">
                                                <b>País:</b>
                                            </label>
                                            <span id="dvPrioridadPais"></span>
                                        </p>
                                        <p>
                                            <label class="label">
                                                <b>Fecha:</b>
                                            </label>
                                            <span id="dvPrioridadFecha"></span>
                                        </p>
                                        <p>
                                            <label class="label">
                                                <b>Número:</b>
                                            </label>
                                            <span id="dvPrioridadNumero"></span>
                                        </p>
                                    </div>
                                    <div id="exFallo" class="floatRight">
                                        <a href="" style="text-decoration: none;" target="_blank">&nbsp; <span class="ui-icon ui-icon-plusthick">
                                        </span>Fallo</a>
                                    </div>
                                    <div id="exInstancias" class="expande floatRight">
                                        &nbsp; <span class="ui-icon ui-icon-plusthick"></span>Instancias Administrativas
                                    </div>
                                    <div id="dvInstancias" style="display: none;">
                                        <label class="titulo">
                                            Instancias Administrativas</label>
                                        <table id="tblInstancias" style="width: 100%;">
                                            <thead>
                                                <tr>
                                                    <td style="width: 15%;">
                                                        Fecha
                                                    </td>
                                                    <td style="width: 35%;">
                                                        Descripción
                                                    </td>
                                                    <td style="width: 50%;">
                                                        Observaciones
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div id="exAnotaciones" class="expande floatRight">
                                        &nbsp; <span class="ui-icon ui-icon-plusthick"></span>Anotaciones
                                    </div>
                                    <div id="dvAnotaciones" style="display: none;">
                                        <label class="titulo">
                                            Anotaciones</label>
                                        <table id="tblAnotaciones" style="width: 100%;">
                                            <thead>
                                                <tr>
                                                    <td style="wi dth: 15%;">
                                                        Fecha
                                                    </td>
                                                    <td style="width: 30%;">
                                                        Descripción
                                                     </td>
                                                    <td style="width: 15%;">
                                                        Anotación
                                                    </td>
                                                    <td style="width: 40%;">
                                                        Observaciones
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
                <div id="tab2">
                    <!--Content-->
                    <fieldset>
                        <form id="frmBuscarAnotacion" action="">
                        <p style="text-align: left;">
                            <label>
                                N° Anotación:</label>
                            <input id="txtAnotacion" name="txtAnotacion2" type="text" maxlength="7" class="inputCorto"
                                onkeypress="return buscarAnotacion(event)" />
                            <label class="label">
                                &nbsp;</label>
                            <span class="form_button">
                                <input id="btnBuscarAnotacion" type="button" value="Buscar" />
                            </span>
                            <input id="Text1" name="txtAnotacion2" type="text" readonly style="display: none;" />
                        </p>
                        <div id="dvAnotacionesResult" style="display: none;">
                            <span class="titulo">Anotación</span>
                            <br />
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 10%;">
                                    </td>
                                    <td style="width: 30%; border-left: 5px;" align="right" nowrap>
                                        <label>
                                            <b>Solicitud de Anotación:</b></label>
                                    </td>
                                    <td style="width: 2%;">
                                    </td>
                                    <td>
                                        <span id="dvAAnotacion"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="right" nowrap>
                                        <label>
                                            <b>Estado del Registro:</b></label>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <span id="dvAEstado"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="right" nowrap>
                                        <label>
                                            <b>Marca:</b></label>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <span id="dvAMarca"></span>
                                    </td>
                                 </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="right" nowrap>
                                        <label>
                                            <b>Numero del Registro:</b></label>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <span id="dvARegistro"></span>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <label class="titulo">
                                Detalle</label>
                            <br />
                            <table id="tblAnotacionesResult" class="tableList" style="width: 100%;" cellpadding="3">
                                <thead>
                                    <tr>
                                        <td>
                                            <label>
                                                <b>Fecha</b></label>
                                        </td>
                                        <td>
                                            <label>
                                                <b>Descripción</b></label>
                                        </td>
                                        <td>
                                            <label>
                                                <b>Observaciones</b></label>
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        </form>
                    </fieldset>
                </div>
                <!-- <div id="tab3">
					<fieldset>
						<form id="frmBuscarInstancia" action="">
						<p>
							<label class="label">
								Fecha:</label>
							<input id="txtFechaInstancia" name="txtFechaInstancia" type="text" maxlength="10" class="floatLeft inputCorto" />
						</p>
						<p>
							<label class="label">
								Tipo Instancia:</label>
							<select id="ddlEstadoInstancia" name="ddlEstadoInstancia" class="floatLeft inputLargo">
							</select>
						</p>
						<p>
							<label class="label">
								&nbsp;</label>
							<span class="form_button">
								<input id="btnBuscarInstancias" type="button" value="Buscar" />
							</span>
						</p>
						<div id="dvInstanciasResult" style="display: none;">
							<table id="tblInstanciasResult" class="tableList" style="width: 100%;" cellpadding="3">
								<thead>
									<tr>
										<td style="width: 10px;">
											<b>N° Solicitud</b>
										</td>
										<td style="width: 100px;">
											<b>Descripción</b>
										</td>
										<td style="width: 100px;">
											<b>Observaciones</b>
			 							</td>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
						</form>
					</fieldset>
				</div> -->
            </div>
            <p>
                <label id="errorIngresoCobertura" class="error">
                </label>
            </p>
        </fieldset>
    </div>
    <form name="aspnetForm" method="post" action="BuscarMarca.aspx" id="aspnetForm">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTYwNTIxNDY2NGRkvuZrYcBaswo50SXLuy69NTQwY5E=" />


<script src="/ScriptResource.axd?d=4kOyBczeXlbLu_mFWdRcM-CyiPt-6jJixSA9G6Etc-okizH7789Ch8eq0NXlvxt4vZ-025JcWmnjNoJ_nf1n0HNgiwVnTaGG0eMxOET7wjdDJr7azpPn-qoGOskJJmCwmPX453Cy_2hB0BnPBLwIs1yARaA1&amp;t=ffffffffbcb9b94a" type="text/javascript"></script>
<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="9246C22D" />
    
    

<script type="text/javascript">
//<![CDATA[
setHash('f5a5ffff609ee11032eb93ca9f6b7c02','636239911184228744');Sys.Application.initialize();
//]]>
</script>
</form>

                </div>
            </div>
            <div class="col3">
                <div class="listaitemizada menuvalores">
                    
                            <!--<li>
							<a id="ctl00_menu_ctl00_HyperLink1">Trámites y servicios</a>-->
                            
                                    <ul>
                                
                                    <!--<li>-->
                                    <p style="margin-bottom: 10px; font-weight: bold;">
                                        <a id="ctl00_menu_ctl00_Repeater1_ctl01_HyperLink2">MARCAS</a>
                                    </p>
                                    
                                            <!--<ul style="margin-top: -5px; margin-bottom: -10px;">-->
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl01_HyperLink2" href="/Marca/RenovacionUnClic.html">Renovaciones en 1 Click</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl02_HyperLink2" href="/Marca/SolicitudMarca.aspx">Solicitud Nueva/Renovación y Pago Electrónico</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl03_HyperLink2" href="/Marca/SolicitudesGuardadas.aspx">Revisar y Pagar Solicitudes Guardadas</a>
                                            </li>
                                         
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl04_HyperLink2" href="/Marca/SolicitudAnotacion.aspx">Solicitud Anotación</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl05_HyperLink2" href="/Marca/SolicitudesAnotacionesGuardadas.aspx">Anotaciones Guardadas</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl06_HyperLink2" href="/Marca/PrimerPago.aspx">Imprimir Comprobante para 1er. Pago y Otros (F10)</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl07_HyperLink2" href="/Marca/PresentacionEscritos.aspx">Presentación de Escritos</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl08_HyperLink2" href="/Marca/NotificacionesDiarias.aspx">Notificaciones Diarias</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl09_HyperLink2" href="/Marca/SolicitudCertificado.aspx">Títulos y Certificados</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl10_HyperLink2" href="/Marca/VerificaCertificado.aspx">Verificar Certificados</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl11_HyperLink2" href="/Marca/SegundoPago.aspx">Pizarra de Pagos (2do pago, renovación y anotación)</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl12_HyperLink2" href="/Marca/BuscarMarca.aspx">Buscar en  Base de Datos</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl13_HyperLink2" href="/Marca/ClasificadorNiza.aspx">Clasificador de Productos y Servicios</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl14_HyperLink2" href="/Marca/FormulariosImprimibles.aspx">Descargar Formularios (pdf)</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl15_HyperLink2" href="/Marca/BuscarExpediente.aspx">Expedientes Digitales</a>
                                            </li>
                                        
                                            <li>
                                                 <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl16_HyperLink2" href="/Poderes/RegistroPoder.aspx">Poderes Electrónicos</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl01_Repeater1_ctl17_HyperLink2" href="/Marca/RegistroElectronico.aspx">Registro Electrónico</a>
                                            </li>
                                        
                                            <!--</ul>-->
                                        
                                    <!--</li>-->
                                    <br />
                                
                                    <!--<li>-->
                                    <p style="margin-bottom: 10px; font-weight: bold;">
                                        <a id="ctl00_menu_ctl00_Repeater1_ctl02_HyperLink2">PATENTES y DISEÑOS</a>
                                    </p>
                                    
                                            <!--<ul style="margin-top: -5px; margin-bottom: -10px;">-->
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl01_HyperLink2" href="/Patente/SolicitudPatente.aspx">Solicitud y Pago en línea</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl02_HyperLink2" href="/Patente/SolicitudesGuardadas.aspx">Revisar y Pagar Solicitudes Guardadas</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl03_HyperLink2" href="/Patente/PrimerPago.aspx">Imprimir Comprobantes para Pago (F10) </a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl04_HyperLink2" href="/Patente/PresentacionEscritos.aspx">Presentación de Escritos</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl05_HyperLink2" href="/Patente/NotificacionesDiarias.aspx">Notificaciones Diarias</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl06_HyperLink2" href="/Patente/SolicitudCertificado.aspx">Títulos y Certificados</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl07_HyperLink2" href="/Patente/ConsultaAvanzadaPatentes.aspx">Buscar en  Base de Datos </a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl08_HyperLink2" href="/Patente/ExpedienteDigital.aspx">Expedientes Digitales</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl09_HyperLink2" href="/Pat ente/BuscarExpediente.aspx">Expediente Histórico</a>
                                            </li>
                                        
                                            <li>
                                                <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl10_HyperLink2" href="/Patente/FormulariosImprimibles.aspx">Descargar Formularios (pdf)</a>
                                            </li>
                                        
                                            <li>
                                                 <a id="ctl00_menu_ctl00_Repeater1_ctl02_Repeater1_ctl11_HyperLink2" href="/Patente/VerificaCertificado.aspx">Verificar Certificados</a>
                                            </li>
                                        
                                            <!--</ul>-->
                                        
                                    <!--</li>-->
                                    <br />
                                
                                    </ul>
                                
                            <!--</li>-->
                        
                    
                </div>
            </div>
            <span class="clearfix"></span>
            

            <!-- script para footer reemplazado por código en duro -->
            <!-- <script type="text/javascript" src="http://www.inapi.cl/portal/proxy_js.php?frag=footer"></script> -->
            <!--__NTG_BEGIN_FOOTER__-->
        </div>
        <span class="clearfix"></span>
    </div>
    <div id="footer">
        <p class="colofon">
            Instituto Nacional de Propiedad Industrial (INAPI). RUT: 65.999.669-3.
            <br>
            Av. Libertador Bernardo O´Higgins 194, piso 1, Santiago, Chile. Tel. (56 2) 2 887
            0400 <span class="contacto"><a href="http://www.inapi.cl/portal/institucional/600/w3-propertyvalue-829.html"
                title="Contacto">Contacto< /a> </span>
        </p>
        <div class="clear">
        </div>
        <ul class="menu-final">
            <li><a href="http://www.inapi.cl/portal/institucional/600/w3-contents.html" title="Mapa del sitio">
                Mapa del sitio</a> </li>
            <li><a href="http://www.inapi.cl/portal/institucional/600/w3-article-1088.html" title="Uso de los contenidos de este sitio">
                Uso de los contenidos de este sitio</a> </li>
            <li><a href="http://www.inapi.cl/portal/institucional/600/w3-article-1089.html" title="Sobre la información en inapi.cl">
                Sobre la información en inapi.cl</a> </li>
            <li><a href="http://www.inapi.cl/portal/institucional/600/w3-article-1198.html" title="descarga visualizadores">
                Descarga visualizadores</a> </li>
            <li><a href="http://www.inapi.cl/portal/institucional/600/w3-article-2544.html" title="Uso de navegador">
                Uso de navegador</a> </li>
            <li><a href="http://www.inapi.cl/portal/institucional/600/rss2-channel.rss" class="rss"
                title="RSS">RSS</a> </li>
        </ul>
        <div style="display: none">
        </div>
    </div>
</body>
</html>

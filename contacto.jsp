

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!--Metadatos-->
    <meta charset="UTF-8">
    <meta name="description" content="Personal Page JSMT">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/styles.css">
    <script src="archivos/page.js"></script>
    <title>SÃºper Virtual</title>
</head>

<body>
    <header id="head">
        <div class="wrapper-h">
            <div class="static-txt"><h3>Â¡Bienvenido!</h3></div>
            <ul class="dynamic-txts">
                <li><span id="caracteristica">Mejores precios</span></li>
            </ul>
        </div>
    </header>

    <nav>
        <ul class="nav-bar">
            <li><a href="index.jsp">Nuestra Tienda On-Line</a></li>
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
            <li><a href="solicitud.jsp">Solicitud de Servicio</a></li>
            
        </ul>
    </nav>

    <div class="content">

        <h1>CONTACTO.</h1>
        <ul class="wrapper">
            <li class="icon facebook">
              <span class="tooltip">WhatsApp: +57 3007501982</span>
              <span><i class="fab fa-youtube"><img style="width:48px; height:48px" src="archivos/whatsapp.png" alt=""></i></span>
            </li>
            <li class="icon youtube">
                <span class="tooltip">Celular: Jose Escudero +57 3007501982</span>
                <span><i class="fab fa-youtube"><img style="width:48px; height:48px" src="archivos/celular.png" alt=""></i></span>
              </li>
            <li class="icon github">
                <span class="tooltip">Dirección: Medellin Antioquia Calle 10 sur </span>
                <span><i class="fab fa-youtube"><img style="width:48px; height:48px" src="archivos/direccion.png" alt=""></i></span>
              </li>
            <li class="icon instagram">
              <span class="tooltip">Ubicación: Medellin Antioquia</span>
              <span><i class="fab fa-youtube"><img style="width:48px; height:48px" src="archivos/ubicacion.png" alt=""></i></span>
            </li>
          </ul>
      </div>
</body>

</html>
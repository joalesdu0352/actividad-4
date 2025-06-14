<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Personal Page JSMT">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="stylesheet" href="styles/solicitud.css">
    <script src="archivos/page.js"></script>
    <title>Súper Virtual</title>
</head>
<body>
    <header id="head">
        <div class="wrapper-h">
            <div class="static-txt"><h3>¡Bienvenido!</h3></div>
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

    <div class="wrapper fadeInDown">
        <div id="formContent">
            <h2 class="active"> Información Digitada </h2>  

            <h6>Nombres y Apellidos</h6>
            <input type="text" class="fadeIn second" value="${nombre}" required>

            <h6>Apodo</h6>
            <input type="text" class="fadeIn second" value="${apodo}" required>

            <h6>Color de Cabello</h6>
            <input type="text" class="fadeIn second" value="${cabello}" required>

            <h6>Color de Ojos</h6>
            <input type="text" class="fadeIn second" value="${ojos}" required>

            <h6>Edad</h6>
            <input type="text" class="fadeIn second" value="${edad}" required>

            <h6>Hobby</h6>
            <input type="text" class="fadeIn second" value="${hobby}" required>

            <br><br>
            <h3>Tu Cuento</h3>
            <p class="fadeIn fourth">
                Érase una vez una persona llamada <strong>${nombre}</strong>, conocida por todos como <strong>${apodo}</strong>. 
                Tenía un hermoso cabello <strong>${cabello}</strong> y unos ojos <strong>${ojos}</strong> que brillaban con la luz del sol. 
                A sus <strong>${edad}</strong> años, dedicaba su tiempo libre a su pasión: <strong>${hobby}</strong>. 
                Un día, mientras practicaba su hobby, descubrió algo inesperado que cambiaría su vida para siempre...
            </p>
        </div>
    </div>	        
</body>
</html>

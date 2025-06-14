<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String nombre = request.getParameter("nombre");
    String apodo = request.getParameter("apodo");
    String cabello = request.getParameter("cabello");
    String ojos = request.getParameter("ojos");
    String edad = request.getParameter("edad");
    String hobby = request.getParameter("hobby");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Cuento Generado</title>
    <style>
        body {
            font-family: Georgia, serif;
            background-color: #fdf6e3;
            padding: 40px;
            color: #333;
        }
        .cuento {
            max-width: 700px;
            margin: auto;
            background-color: #fff8dc;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 10px #bbb;
        }
        h2 {
            text-align: center;
            color: #4b0082;
        }
        p {
            font-size: 18px;
            line-height: 1.8;
        }
    </style>
</head>
<body>
    <div class="cuento">
        <h2>Tu cuento personalizado</h2>
        <p>
            Había una vez una persona llamada <strong><%= nombre %></strong>, aunque todos le decían <strong><%= apodo %></strong>.
            Tenía el cabello de color <strong><%= cabello %></strong> y unos ojos <strong><%= ojos %></strong> que brillaban como el amanecer.
            A sus <strong><%= edad %></strong> años, disfrutaba profundamente de <strong><%= hobby %></strong>, una actividad que lo hacía sentir vivo.
            Un día cualquiera, mientras se dedicaba a su hobby favorito, algo inesperado ocurrió que cambiaría su historia para siempre...
        </p>
    </div>
</body>
</html>

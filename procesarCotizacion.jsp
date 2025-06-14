<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <title>Procesar Cotizacion</title>
</head>
<body>
<h2>Resumen de Solicitud de Cotizacion</h2>
<p><strong>Nombre:</strong> <%= request.getParameter("nombre") %></p>
<p><strong>Correo:</strong> <%= request.getParameter("correo") %></p>
<p><strong>Ciudad:</strong> <%= request.getParameter("ciudad") %></p>
<p><strong>Dirección:</strong> <%= request.getParameter("direccion") %></p>
<p><strong>Celular:</strong> <%= request.getParameter("celular") %></p>

<h3>Productos seleccionados:</h3>
<ul>
<%
    String[] productos = request.getParameterValues("productos");
    if (productos != null) {
        for (String producto : productos) {
            String cantidad = request.getParameter(producto.toLowerCase().replace(" ", "_") + "_qty");
%>
    <li><%= producto %>: <%= cantidad %> unidad(es)</li>
<%
        }
    } else {
%>
    <li>No se seleccionaron productos.</li>
<%
    }
%>
</ul>

<p><strong>Comentarios:</strong> <%= request.getParameter("comentarios") %></p>
</body>
</html>
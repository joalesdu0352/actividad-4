<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Solicitud de Cotizacion</title>
</head>
<body>
    <h2>Lista de Cotizacion</h2>
    <form action="guardarCotizacion.jsp" method="post">
        Nombre y Apellidos: <input type="text" name="nombre y apellidos" required><br>
        Correo Electronico: <input type="email" name="correo electronico" required><br>
        Ciudad:
        <select name="ciudad">
            <option value="Bogota DC">Bogota DC</option>
            <option value="Medellin">Medellin</option>
            <option value="Cali">Cali</option>
	    <option value="Pereira">Pereira</option>
	    <option value="Bucaramanga">Bucaramanga</option>
            <option value="Ibague">Ibague</option>
             <option value="Barranquilla">Barranquilla</option>
        </select><br>
        Direccion: <input type="text" name="direccion" required><br>
        Numero Celular: <input type="text" name="celular" required><br>
        Comentarios: <textarea name="comentarios"></textarea><br><br>

        <h3>Seleccione productos</h3>
<%
    String[] productos = {"Arroz", "Frijoles", "Aceite", "Huevos", "Leche", "panela", "papa", "maiz", "azucar", "tomate", "salsa tomate", "atun"};
    for(String p : productos) {
%>
    <input type="checkbox" name="producto" value="<%=p%>"> <%=p%>
    Cantidad: <input type="number" name="cantidad_<%=p%>" min="1"><br>
<% } %>
        <br>
        <input type="submit" value="Enviar datos">
        <input type="reset" value="Cancelar">
    </form>

    <form action="index.jsp" style="margin-top: 20px;">
        <input type="submit" value="Volver al inicio">
    </form>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buscar Cotización</title>
</head>
<body>
    <h2>Consultar Cotizacion</h2>
    <form action="mostrarCotizacion.jsp" method="get">
        Ingrese ID de cotizacion:
        <input type="number" name="id" required>
        <input type="submit" value="Consultar">
    </form>

    <form action="index.jsp" style="margin-top: 20px;">
        <input type="submit" value="Volver al inicio">
    </form>
</body>
</html>

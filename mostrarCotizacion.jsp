<%@ page import="java.sql.*" %>
<%
    String idParam = request.getParameter("id");
    int idCotizacion = 0;
    if (idParam != null && !idParam.isEmpty()) {
        try {
            idCotizacion = Integer.parseInt(idParam);
        } catch (Exception e) {
            out.println("<p>ID inválido.</p>");
            return;
        }
    } else {
        out.println("<p>ID no proporcionado.</p>");
        return;
    }

    Connection conn = null;
    PreparedStatement psCliente = null;
    PreparedStatement psProd = null;
    ResultSet rsCliente = null;
    ResultSet rsProd = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base", "usuario", "clave");

        psCliente = conn.prepareStatement("SELECT * FROM cotizacion WHERE id = ?");
        psCliente.setInt(1, idCotizacion);
        rsCliente = psCliente.executeQuery();

        if (rsCliente.next()) {
%>
<h2>Resumen de Cotizacion</h2>
<p><strong>Nombre:</strong> <%= rsCliente.getString("nombre") %></p>
<p><strong>Ciudad:</strong> <%= rsCliente.getString("ciudad") %></p>
<p><strong>Direccion:</strong> <%= rsCliente.getString("direccion") %></p>
<p><strong>Correo:</strong> <%= rsCliente.getString("correo") %></p>
<p><strong>Celular:</strong> <%= rsCliente.getString("celular") %></p>
<p><strong>Comentarios:</strong> <%= rsCliente.getString("comentarios") %></p>

<h3>Productos Cotizados</h3>
<table border="1">
    <tr><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Subtotal</th></tr>
<%
        double total = 0;
        psProd = conn.prepareStatement("SELECT dc.producto, dc.cantidad, p.precio_unitario, (dc.cantidad * p.precio_unitario) as subtotal FROM detalle_cotizacion dc JOIN producto p ON dc.producto = p.nombre WHERE id_cotizacion = ?");
        psProd.setInt(1, idCotizacion);
        rsProd = psProd.executeQuery();
        while (rsProd.next()) {
            String producto = rsProd.getString("producto");
            int cantidad = rsProd.getInt("cantidad");
            double precio = rsProd.getDouble("precio_unitario");
            double subtotal = rsProd.getDouble("subtotal");
            total += subtotal;
%>
    <tr>
        <td><%= producto %></td>
        <td><%= cantidad %></td>
        <td>$<%= String.format("%.2f", precio) %></td>
        <td>$<%= String.format("%.2f", subtotal) %></td>
    </tr>
<% } %>
    <tr>
        <td colspan="3"><strong>Total</strong></td>
        <td><strong>$<%= String.format("%.2f", total) %></strong></td>
    </tr>
</table>
<%
        } else {
            out.println("<p>No existe la cotización.</p>");
        }
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
        e.printStackTrace(new java.io.PrintWriter(out));
    } finally {
        if (rsCliente != null) rsCliente.close();
        if (rsProd != null) rsProd.close();
        if (psCliente != null) psCliente.close();
        if (psProd != null) psProd.close();
        if (conn != null) conn.close();
    }
%>
<br>
<form action="index.jsp">
    <input type="submit" value="Volver al inicio">
</form>

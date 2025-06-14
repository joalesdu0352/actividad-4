<%@ page import="java.sql.*, java.util.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String nombre = request.getParameter("nombre");
    String correo = request.getParameter("correo");
    String ciudad = request.getParameter("ciudad");
    String direccion = request.getParameter("direccion");
    String celular = request.getParameter("celular");
    String comentarios = request.getParameter("comentarios");

    String[] productos = request.getParameterValues("producto");

    Connection conn = null;
    PreparedStatement psCot = null;
    PreparedStatement psDet = null;
    ResultSet rsGen = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_base", "usuario", "clave");

        // Insertar cotizacion
        psCot = conn.prepareStatement("INSERT INTO cotizacion(nombre, correo, ciudad, direccion, celular, comentarios) VALUES (?, ?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
        psCot.setString(1, nombre);
        psCot.setString(2, correo);
        psCot.setString(3, ciudad);
        psCot.setString(4, direccion);
        psCot.setString(5, celular);
        psCot.setString(6, comentarios);
        psCot.executeUpdate();

        rsGen = psCot.getGeneratedKeys();
        int idCotizacion = 0;
        if (rsGen.next()) idCotizacion = rsGen.getInt(1);

        // Insertar detalles
        psDet = conn.prepareStatement("INSERT INTO detalle_cotizacion(id_cotizacion, producto, cantidad) VALUES (?, ?, ?)");
        for (String p : productos) {
            String param = "cantidad_" + p;
            int cant = Integer.parseInt(request.getParameter(param));
            psDet.setInt(1, idCotizacion);
            psDet.setString(2, p);
            psDet.setInt(3, cant);
            psDet.executeUpdate();
        }

        response.sendRedirect("mostrarCotizacion.jsp?id=" + idCotizacion);

    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
        e.printStackTrace(new java.io.PrintWriter(out));
    } finally {
        if (rsGen != null) rsGen.close();
        if (psCot != null) psCot.close();
        if (psDet != null) psDet.close();
        if (conn != null) conn.close();
    }
%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Solicitud - Formulario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 40px;
        }
        .formulario {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 0 10px #aaa;
            padding: 30px;
            max-width: 500px;
            margin: auto;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
    </style>
    <script>
        function validarFormulario() {
            const campos = ["nombre", "apodo", "cabello", "ojos", "edad", "hobby"];
            for (let campo of campos) {
                let valor = document.forms["formularioCuento"][campo].value.trim();
                if (valor === "") {
                    alert("Por favor completa todos los campos.");
                    return false;
                }
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="formulario">
        <h2>Tabla de Registro Cuento</h2>
        <form name="formularioCuento" action="cuentoGenerado.jsp" method="post" onsubmit="return validarFormulario();">
            <label>Nombres y Apellidos:</label>
            <input type="text" name="nombre">

            <label>Apodo:</label>
            <input type="text" name="apodo">

            <label>Color de Cabello:</label>
            <input type="text" name="cabello">

            <label>Color de Ojos:</label>
            <input type="text" name="ojos">

            <label>Edad:</label>
            <input type="number" name="edad" min="1">

            <label>Hobby:</label>
            <input type="text" name="hobby">

            <input type="submit" value="Continuar">
        </form>
    </div>
</body>
</html>

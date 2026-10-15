<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Confirmación de Registro</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #e8f5e9; padding: 50px; text-align: center; }
        .tarjeta-exito { background: white; padding: 30px; border-radius: 8px; display: inline-block; box-shadow: 0 4px 8px rgba(0,0,0,0.1); border-top: 5px solid #2e7d32; }
        h2 { color: #2e7d32; }
        p { font-size: 16px; color: #333; margin: 10px 0; text-align: left; }
        .resaltado { font-weight: bold; color: #7B1FA2; }
        a { display: inline-block; margin-top: 20px; color: #7B1FA2; text-decoration: none; font-weight: bold; }
    </style>
</head>
<body>
<div class="tarjeta-exito">
    <h2>¡Registro Exitoso!</h2>
    <p>Transacción persistida en el servidor central:</p>
    <hr>
    <p><strong>ID Empleado:</strong> <%= request.getAttribute("empleadoId") %></p>
    <p><strong>Tipo Marcación:</strong> <span class="resaltado"><%= request.getAttribute("tipoRegistro") %></span></p>
    <p><strong>Fecha y Hora:</strong> <%= request.getAttribute("marcaTiempo") %></p>
    <p><strong>Ubicación GPS:</strong> <%= request.getAttribute("coordenadas") %></p>
    <a href="index.jsp">← Volver al Quiosco</a>
</div>
</body>
</html>

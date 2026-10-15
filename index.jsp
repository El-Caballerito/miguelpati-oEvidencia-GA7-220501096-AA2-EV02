<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Quiosco de Asistencia - Ficha 3336095</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f9; padding: 50px; }
        .contenedor { background: #ffffff; padding: 30px; border-radius: 8px; max-width: 400px; margin: 0 auto; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        h2 { color: #4A148C; text-align: center; }
        label { display: block; margin: 15px 0 5px; font-weight: bold; }
        select, input { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; background-color: #7B1FA2; color: white; padding: 12px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer; margin-top: 20px; }
        button:hover { background-color: #4A148C; }
    </style>
</head>
<body>
<div class="contenedor">
    <h2>Registrar Marcación</h2>
    <form action="AsistenciaServlet" method="POST">
        <label for="empleadoId">ID del Empleado:</label>
        <input type="text" id="empleadoId" name="empleadoId" required placeholder="Ej. 102040">
        <label for="tipoRegistro">Tipo de Evento:</label>
        <select id="tipoRegistro" name="tipoRegistro">
            <option value="Entrada">Entrada</option>
            <option value="Almuerzo - Salida">Salida a Almuerzo</option>
            <option value="Almuerzo - Entrada">Regreso de Almuerzo</option>
            <option value="Salida">Salida Final</option>
        </select>

        <label for="coordenadas">Coordenadas GPS:</label>
        <input type="text" id="coordenadas" name="coordenadas" value="6.2442,-75.5812" readonly>
        <button type="submit">Confirmar Registro</button>
    </form>
</div>
</body>
</html>

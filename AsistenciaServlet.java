import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/AsistenciaServlet")
public class AsistenciaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<h3>[OK] Servidor Central de Asistencia Activo</h3>");
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String empleadoId = request.getParameter("empleadoId");
        String tipoRegistro = request.getParameter("tipoRegistro");
        String coordenadas = request.getParameter("coordenadas");
        String marcaTiempo = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        request.setAttribute("empleadoId", empleadoId);
        request.setAttribute("tipoRegistro", tipoRegistro);
        request.setAttribute("marcaTiempo", marcaTiempo);
        request.setAttribute("coordenadas", coordenadas);

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}

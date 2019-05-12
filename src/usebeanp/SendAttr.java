package usebeanp;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sendattr")
public class SendAttr extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ModelKisi modelKisi = new ModelKisi("Deniz", "Inan", "20");
		ModelKisi modelKisi2 = new ModelKisi("Hasan", "Cerit", "21");

		req.setAttribute("deniz", modelKisi);
		req.setAttribute("hasan", modelKisi2);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("JSPs/usebean.jsp");
		requestDispatcher.forward(req, resp);
	}
}

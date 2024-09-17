package controller;
import model.Traffic;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/CRUDServlet")
/**
 * Servlet implementation class CRUDServlet
 */
public class CRUDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		Traffic.delete(id);
		response.sendRedirect("DisplayServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("update")) {
			
			Traffic.update(request.getParameter("id"),request.getParameter("depart"),request.getParameter("arrivee"),request.getParameter("prix"),request.getParameter("nbbillet"));
		}
		
		
		if (action.equals("insert")) {
			Traffic.insert(request.getParameter("id"),request.getParameter("depart"),request.getParameter("arrivee"),request.getParameter("prix"),request.getParameter("nbbillet"));
		}
		response.sendRedirect("DisplayServlet");
	}

}

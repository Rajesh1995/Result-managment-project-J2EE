

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.ConnectionProvider;

/**
 * Servlet implementation class AddResult
 */
@WebServlet("/AddResult")
public class AddResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String branch=request.getParameter("branch");
		String Sem=request.getParameter("sem");
		String roll=request.getParameter("roll");
		String Paper1=request.getParameter("paper1");
		String Paper2=request.getParameter("paper2");
		String Paper3=request.getParameter("paper3");
		String Paper4=request.getParameter("paper4");
		String Paper5=request.getParameter("paper5");
		String Paper6=request.getParameter("paper6");
		String url="insert into StudentResult values('"+branch+"','"+Sem+"','"+roll+"','"+Paper1+"','"+Paper2+"','"+Paper3+"','"+Paper4+"','"+Paper5+"','"+Paper6+"')";
		
		
		try
		{
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			st.executeUpdate(url);
			response.sendRedirect("AddResult.jsp");
		}
		catch(Exception e)
		{
			System.out.println("Exception!!!!!!!!   "+e);
		}
		doGet(request, response);
	}

}

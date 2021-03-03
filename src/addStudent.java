

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import project.ConnectionProvider;

/**
 * Servlet implementation class addStudent
 */
@WebServlet("/addStudent")
public class addStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addStudent() {
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
		String course=request.getParameter("course");
		String roll=request.getParameter("roll");
		String sname=request.getParameter("name");
		String fname=request.getParameter("fname");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String sql="insert into stdDetail values('"+course+"','"+roll+"','"+sname+"','"+fname+"','"+gender+"','"+dob+"')";
		
		
		try
		{
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("AdminHome.jsp");
		}
		catch(Exception e)
		{
			System.out.println("Exception!!!!!!!!   "+e);
		}



		doGet(request, response);
	}

}

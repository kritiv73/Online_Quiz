import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ResultPage
 */
@WebServlet("/ResultServlet1")
public class ResultServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			Connection con = DatabaseConnectionLogin.initializeDatabase(); 
			HttpSession session = request.getSession();
			String uname=session.getAttribute("username").toString();
			System.out.println(uname);
			
			String sub=request.getParameter("subject");
			String ch="none";
			if(sub.contentEquals(ch))
			{
				response.sendRedirect("result_dash.jsp");
			}
			else
			{
				String query="select total_question,total_attempt,mark from result where username='"+uname+"' and subject='"+sub+"';";
				
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(query); 
				rs.next();
				int total_ques=rs.getInt("total_question");
				
				int total_attempt=rs.getInt("total_attempt");
				int mark=rs.getInt("mark");
				
				session.setAttribute("subject", sub);
				session.setAttribute("total_ques", total_ques);
				session.setAttribute("total_attempt", total_attempt);
				session.setAttribute("mark", mark);
				response.sendRedirect("result.jsp");
				st.close(); 
	            con.close(); 
			}
    		
    	
  
						
		}
		catch(Exception ex)
		{
			
		}
	}

}

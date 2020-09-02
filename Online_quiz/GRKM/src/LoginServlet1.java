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
  
// Import Database Connection Class file  
  
// Servlet Name 
@WebServlet("/LoginServlet1") 
public class LoginServlet1 extends HttpServlet 
{ 
    private static final long serialVersionUID = 1L; 
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    { 
    	int flag=0;
        try 
        { 
  
            // Initialize the database 
            Connection con = DatabaseConnectionLogin.initializeDatabase(); 
            String uname=request.getParameter("username");
    		String pass=request.getParameter("password");
            String query="select password from login where username='"+uname+"'";
            Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery(query);
    		if(rs.next())
    		{
    			String pw=rs.getString("password");
    			if(pass.contentEquals(pw))
				{
					flag=1;
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					
					response.sendRedirect("./DashboardServlet");
				}
    		}
            
    
            if(flag==0)
            {
            	response.sendRedirect("loginError.html");
            }
            st.close(); 
            con.close(); 
  
           
        } 
        catch (Exception e) { 
            e.printStackTrace(); 
        } 
    } 
} 
package abcd;
import java.lang.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Login")
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String lemail = request.getParameter("lemail");
        String lpassword  = request.getParameter("lpassword");
       

     

      

        try{

        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database
          Connection  con=DriverManager.getConnection
                    ("jdbc:mysql://localhost/utility","root","root");

        PreparedStatement ps=con.prepareStatement
                  ("select * from user where email=? and passcode=? ");

        ps.setString(1,lemail);
        ps.setString(2,lpassword);
       





        ResultSet rs=ps.executeQuery();

         if(rs.next()) {
        	 out.print("login succesful");
         }

        }
        catch(Exception se)
        {
            se.printStackTrace();
        }

      



finally{out.close();}

}
  }

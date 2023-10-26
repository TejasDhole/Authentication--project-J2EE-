package login;



import java.io.IOException;

import Dao.login_Authentication_Dao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		
		login_Authentication_Dao dao = new login_Authentication_Dao();
		
		if(dao.check(mobile, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username",mobile );
			session.setAttribute("password",password);
			response.sendRedirect("home.jsp");
		}
		else 
		{response.sendRedirect("login.jsp");
	}
		
	}


}

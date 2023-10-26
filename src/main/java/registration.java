

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Dao.login_Authentication_Dao;

@WebServlet("/registration")
public class registration extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String first_name = request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String gender = request.getParameter("gender");
		String mobile = request.getParameter("Mobile");
		String address = request.getParameter("Address");
		String password = request.getParameter("password");
		 
		login_Authentication_Dao dao1 = new login_Authentication_Dao();
		
		dao1.setData(first_name,last_name,gender,mobile,address,password);
		response.sendRedirect("login");
		
		
		
}

}

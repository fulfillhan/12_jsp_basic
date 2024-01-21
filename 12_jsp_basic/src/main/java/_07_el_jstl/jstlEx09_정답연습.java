package _07_el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/jstlEx09_정답연습")
public class jstlEx09_정답연습 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("isChecked", false);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx09_연습.jsp");
			dis.forward(request, response);
		
	}

}

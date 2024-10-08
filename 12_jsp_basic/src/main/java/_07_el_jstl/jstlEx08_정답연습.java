package _07_el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jstlEx08_정답연습")
public class jstlEx08_정답연습 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       // id와 pw를 구하는 로직
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//서블릿과 jsp페이지간 데이터 전달 할 때 사용
		request.setAttribute("id", "qwer1234");
		request.setAttribute("pw", "1234");
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx08_연습.jsp");
		dis.forward(request, response);
		
	}

	
	

}

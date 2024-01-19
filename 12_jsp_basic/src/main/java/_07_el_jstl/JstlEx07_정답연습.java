package _07_el_jstl;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JstlEx07_정답연습")
public class JstlEx07_정답연습 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// me의 값을 랜덤으로 지정하여 데이터 출력하는 로직 
		Random ran = new Random();
		int me= ran.nextInt(3)+1;
		
		String value="";
		if(me == 1) value = "바위";
		else if(me == 2) value = "보";
		else if(me == 3) value = "가위";
		
		request.setAttribute("me", value);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx07_연습.jsp");
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}

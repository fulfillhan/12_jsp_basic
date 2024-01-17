package _06_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servletEx01")// 클라이언트가 jsp페이지가 아닌 해당 url경로로 웹시스템에 request한다.
public class ServletEx01 extends HttpServlet {// Http 통신이 가능한 HttpServlet클래스를 상속받아 구현한다.
	private static final long serialVersionUID = 1L; // Servlet생성시 기본값으로 생성된다. 서블릿 이 식별자를 통해서 서블릿을 인식한다.
       

	
	// get형식으로 url요청이 들어왔을 때 수행할 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	// post형식으로 url요청이 들어왔을 때 수행할 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

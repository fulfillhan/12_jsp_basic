package _06_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servletEx02")//웹페이지에 보이는 경로
public class ServletEx02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	// jsp의 화면을 doget한다..
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//-> forward하기 전에 request.set(설정)한다.
		
		// 컨트롤러에서 뷰로 데이터를 전송할 경우 request.setAttribute("속성명", 값); 메서드를 통하여서 전송한다.
		request.setAttribute("data1", "글자데이터");// data1에 값(데이터) 가 저장되어 화면에 출력된다.
		request.setAttribute("data2", 2);
		request.setAttribute("data3", true);
		
		
		
		//화면을 불러오는 문법
		RequestDispatcher dis = request.getRequestDispatcher("chapter06_servlet/servletEx02.jsp");
		dis.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

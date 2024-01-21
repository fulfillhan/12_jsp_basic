package _06_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*

# 서블렛(Servlet)

- 서블렛이란 자바를 사용하여 웹을 만들기 위해 필요한 기술이름이다.

- 클라이언트의 요청을 처리하고 그 결과를 반환하는 자바 웹 프로그래밍 기술이다.

- M(model) V(view) C(controller) 패턴에서 Controller로 이용된다.

- HTTP 프로토콜 서비스를 지원하는 javax.servlet.http.HttpServlet 클래스를 상속받아서 구현되어진다.

- Java Server(WAS = 서블릿컨테이너)가 JSP 코드를 읽어들여 서블릿 소스 코드로 변환하여 컴파일한다. (JSP 파일 > Servlet 파일 > 클래스 파일 > 컴파일)	

- 서블렛은 jsp파일과 다르게 재컴파일이 되어야 하므로 재컴파일 완료 유무를 항상 확인해야 한다.	

- 서블릿(Servlet)은 웹 브라우저에서 request가 있는 경우 애플리케이션 서버(WAS)가 서블릿 클래스의 인스턴스를 생성한다.
	매번 리퀘스트 할 때마다 인스턴스를 생성하는 것은 서버에 부하가 걸리기 때문에, 
	처음 생성된 인스턴스를 request에 대한 response 뒤에도 파기하지 않고 클라이언트의 다음 request에서도 재사용하며 
	서버를 종료하는 등의 경우 서버에서 인스턴스를 파기한다
	.	

*/
			

@WebServlet("/servletEx01")// 클라이언트가 jsp페이지가 아닌 해당 url경로로 웹시스템에 request한다.
public class ServletEx01 extends HttpServlet {// Http 통신이 가능한 HttpServlet클래스를 상속받아 구현한다.
	private static final long serialVersionUID = 1L; // Servlet생성시 기본값으로 생성된다. 서블릿 이 식별자를 통해서 서블릿을 인식한다.
       

	
	// get형식으로 url요청이 들어왔을 때 수행할 메서드(jsp의 페이지를 내보낸다)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 아래의 dispatcher에 명시된 jsp파일로 포워딩 한다.
		 RequestDispatcher dis= request.getRequestDispatcher("chapter06_servlet/servletEx01.jsp");// request.getRequestDispatcher("jsp 경로");
		 dis.forward(request, response);
		 
	
	}

	// post형식으로 url요청이 들어왔을 때 수행할 메서드(유저가 보내는 방식)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request jsp의 내장된 객체
		request.setCharacterEncoding("utf-8");
		
		System.out.println( "data1 = "+ request.getParameter("data1"));
		System.out.println( "data2 = "+ request.getParameter("data2"));
		System.out.println( "data3 = "+ request.getParameter("data3"));
			
		 RequestDispatcher dis= request.getRequestDispatcher("chapter06_servlet/servletEx01Action.jsp");// request.getRequestDispatcher("jsp 경로");
		 dis.forward(request, response);
	}

}

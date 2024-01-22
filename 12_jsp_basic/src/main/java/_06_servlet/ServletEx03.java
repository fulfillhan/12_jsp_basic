package _06_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servletEx03")
public class ServletEx03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 
		 *  # PrintWriter
		 *
		 *  response.getWriter(); 메서드를 이용하여 PrintWriter 객체를 생성한다.
		 *  PrintWriter 클래스는 Springframework의 @ResponseBody , ResponseEntity , @RestController와 같은 기능을 한다.
		 *  PrintWriter 클래스의 print()메서드로 새로운 html을 표시한다.
		 *  
		 * */
		//반환되는 데이터의 encoding(한글화) 지원 contentType="text/html; charset=UTF-8" 
		response.setContentType("text/html; charset=UTF-8");
		
		 PrintWriter out = response.getWriter();//PrintWriter 클래스의 print()메서드로 새로운 html을 표시한다.
		 out.print("<h1>테스트데이터</h1>");// 간단한거 여기서 처리가능 html형식으로
		 // 한구어로는 처리가 안됨 -> response.setContentType("text/html; charset=UTF-8");
		 

		 out.print("<a href='servletEx01'>ServletEx01로 이동</a>");
	
	}

	
}

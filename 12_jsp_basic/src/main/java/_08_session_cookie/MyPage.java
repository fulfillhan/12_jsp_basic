package _08_session_cookie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/myPage")
public class MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 세션 조회하기
		HttpSession session = request.getSession();
		
		//session.getAttribute("세션명") : 세션 데이터를 반환한다.
		//session.getAttribute("세션명") 의 반환타입은 object형이므로 캐스팅[형변환]하여 사용한다.
		 String id = (String)session.getAttribute("id");
		
		 /* (DAO) 관련 데이터를 조회하는 로직 */
		 
		// DAO에서 조회한 데이터를 View로 전송
		// request.setAttribute("속성명", DB에서 조회한 데이터);
			request.setAttribute("name", "익명");
			request.setAttribute("hp", "010-1234-5678");
			request.setAttribute("address", "서울 경기 인천");
			
			 RequestDispatcher dis = request.getRequestDispatcher("chapter08_session_cookie/myPage.jsp"); 
				dis.forward(request, response);
	}

	

}

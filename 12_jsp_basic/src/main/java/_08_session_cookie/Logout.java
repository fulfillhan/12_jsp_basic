package _08_session_cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션을 끊어버린다= 로그아웃
		 HttpSession session= request.getSession();
		
		 // session.removeAttribute("세션명") : 특정 속성만 제거
//		 session.removeAttribute("id");
//		 session.removeValue("role");
		 
		 //session.invalidate() : 전체 속성 제거
		 session.invalidate();//유효하지 않음
		 
		 //리액션
		 String jsScript = """
					<script>
						alert("로그아웃 되었습니다.");
						location.href = "sessionLogin";
					</script>""";
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(jsScript);
		 
		 
	}


	

}

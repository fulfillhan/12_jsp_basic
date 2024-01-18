package _07_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/eIEX01")
public class EIEX01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("name", "tim");
		request.setAttribute("num1", "12");
		request.setAttribute("num2", "3");
		
		ArrayList<String> list1 = null; //생성x
		ArrayList<String> list2 = new ArrayList<String>(); // 생성0, 데이터x
		ArrayList<String> list3 = new ArrayList<String>(); // 생성0, 데이터0
		list3.add("data1");
		list3.add("data2");
		list3.add("data3");
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/elEx01.jsp");
		dis.forward(request, response);
	}


}

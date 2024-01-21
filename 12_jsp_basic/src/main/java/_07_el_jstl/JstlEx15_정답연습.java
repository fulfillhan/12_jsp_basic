package _07_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 
@WebServlet("/JstlEx15_정답연습")
public class JstlEx15_정답연습 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ProductDTO[박스] 객체를 담는 ArrayList[컨테이너] 초기화
		ArrayList<ProductDTO> productList =  new ArrayList<ProductDTO>();
		
		// ArrayList 채우기 위한 루프[각각의 박스들 안의 상품들 조회]
		for (int i = 1; i < 10; i++) {
			ProductDTO product = new ProductDTO();
			product.setPdCd("P00" + i);
			product.setPdNm("기계식키보드"+i);
			product.setDeptNm("생산부서"+ i);
			product.setDeptCd("dept"+ i);
			product.setMgrCd("m"+i);
			product.setMgrNm("홍길동"+ i);
			productList.add(product);
		}
		 // productList 의 배열을 "productList" 베열에 저장하여 jsp로 보낸다
		request.setAttribute("productList", productList);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx15_연습.jsp"); 
		dis.forward(request, response);
	}

	

}

package _07_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jstlEx03")
public class JstlEx03 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//배열 예시[크기고정]
		String[] datas = {"데이터1" , "데이터2" , "데이터3" , "데이터4" , "데이터5"};
		request.setAttribute("datas", datas);
		
		//리스트 예시[크기 변화]
		ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
		for (int i = 1; i < 10; i++) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setPdCd("P00" + i);
			productDTO.setPdNm("기계식키보드" + i);
			productDTO.setDeptCd("dept" + i);
			productDTO.setDeptNm("생산부서" + i);
			productDTO.setMgrCd("mgr" + i);
			productDTO.setMgrNm("홍길동" + i);
			productList.add(productDTO);
		}
		request.setAttribute("productList", productList);
		//model.addAttribute("productList", productList); 스프링에서 이렇게 쓰인다
		//mv.addObject("productList", productList); 스프링에서 이렇게 쓰인다
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx03.jsp"); 
		dis.forward(request, response);
		
	}

}

package _09_file;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

/*
8bit     > 1Byte
1024Byte > 1KB
1024KB   > 1MB
1024MB   > 1GB
1024GB   > 1TB
*/


@WebServlet("/upload1")
public class Upload1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
	    
		# 파일 업로드를 수행하는 MultipartRequest 객체 생성 ( 핵심 역할 )
		
		[ 생성자의 인수 설명 ]
				
	    - 첫번째 인자는 폼에서 가져온 인자 값을 얻기 위해 request객체를 전달한다. 
		- 두번째 인자는 업로드 될 파일의 위치를 입력한다.
	    - 세번째 인자는 업로드한 모든 파일의 용량의 합의 최대치를 의미하며 최대 크기를 넘는경우 Exception이 발생한다.
	    - 네번째 인자는 한글 이름이 넘어올 경우 한글에 문제되지 않도록 인코딩을 지정한다.
	
	 */
		// 파일의 저장 경로는 웹서비스의 접근 경로가 아닌 물리적인 실제 경로를 적어주어야 한다.
		// 폴더구분자 '\\' 추가해서 작성필요
		String saveDirectory = "C:\\Users\\82108\\git\\12_jsp_basic\\12_jsp_basic\\src\\main\\webapp\\chapter09_file\\fileRepository\\";// 컴퓨터 환경마다 달라짐
		
		// MultipartRequest 이 코드가 실제로 파일 업로드를 담당하는 부분이다.
		//new MultipartRequest(request, 저장폴더, 맥시멈크기,인코딩, (리네임정책));
		MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory,1024*1024 *100, "utf-8");
		
		Enumeration<?> files = multipartRequest.getFileNames();
		
		if(files.hasMoreElements()) { //엘리먼트가 존재하면
			String element =(String) files.nextElement(); //<input type="file"> 엘리먼트를 반환
			multipartRequest.getOriginalFileName(element);// 서버에 업로드 '한' 파일명을 반환
			multipartRequest.getFilesystemName(element);//서버에 업로드 '된' 파일명을 반환
			multipartRequest.getContentType(element);//파일 타입을 반환
			multipartRequest.getFile(element).length();//파일의 크기를 반환(long 타입)
			
		}
		
	}

}

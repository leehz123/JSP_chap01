package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//그 외의 설정들은 JSP의 <%@ %>이 담당한다.
@WebServlet("/servlet/basic")
public class ServletBasic extends HttpServlet {

	
	//원하는 메서드를 추가할 수 있는 곳. JSP의 <%! %>
	
	
	//사용자가 요청을 보내면 처리해주는 부분. 즉 JSP의 <% %>
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// HttpServletRequest : 사용자의 요청 정보 객체
		// HttpServletResponse : 처리가 끝난 후 응답할 객체
		
		
		//사용자가 요청을 보내면 처리해주는 부분. JSP의 <% %>
		
		//JSP페이지의 out 내장객체
		PrintWriter out = resp.getWriter();
		
		//우리가 만든 JSP코드가 1차적으로 변환 됐을 때의 모습! 여기서 HTML짜라 그러면 고통스럽겟쥐 오타나고 자동완성도 안 되고,, 그니까 jsp파일에서 짜는게 편하것지
		out.print("<html>");
		out.print("<head>");
		out.print("<title>My Servlet Page</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<div style=\"width: 100px; height: 100px; background: red;\"></div>");
		out.print("<script>for(i=0; i<100;++i){console.log(i*i);}</script>"); //이건 HTML에 도착해서 실행된다는 것!
		out.print("</body>");
		out.print("</html>");
		
		
		//그럼 여기서 뭘 하느냐
		//자바를 통해 여러 처리를 진행한 후, 처리 결과물을 사용해 페이지를 만들어 응답할 수 있다.
		//주로 서버 측에 저장된 디비 또는 파일의 데이터를 이용하여 처리를 진행한다.
		
	}
}

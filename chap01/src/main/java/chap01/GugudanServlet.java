package chap01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/gugudan")
public class GugudanServlet extends HttpServlet { //상속 받아서 서블렛을 만들어주기
	/*
	 chap01/servlet/gugudan으로 접속하는 클라이언트에게 예쁜 구구단 표를 응답하는 서블릿을 만들어보세요.
	 */
	
	
	@Override  //서비스 오버라이딩
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setCharacterEncoding("EUC-KR"); // response객체의 캐릭터인코딩을 먼저 한 다음에 (이게 아랫줄 보다 먼저 나와야 됨)
		PrintWriter out = resp.getWriter(); // 롸이터를 꺼내주면 됨 

//		out.print("<html lang=\"ko\">");
//
//		out.print("<head>");
//		out.print("");
//		out.print("<meta charset=\"EUC-KR\">");
//		out.print("<title>gugudan</title>");	
//		out.print("</head>");
//		
//		out.print("<body>");
//		
//		out.print("<table id=\"out\" style=\"background: rgb(205, 104, 255); font-size: 15px;\">");
//		out.print("</table>");
//		
//		out.print("<script> function print(obj){ document.getElementById('out').innerHTML += obj; };</script>");
//		out.print("<script>for(i=2; i<=9; ++i){print(`<tr><th>${i}단</th></tr>`); for(j=1; j<=9; ++j){print(`<tr><td>${i}*${j}=${i*j}</td></tr>`);} print('<br>');}</script>");
//		
//		out.print("</body>");
//		out.print("</html>");

		
		//JSP는 프론트 쪽을 만들 때 사용
		//서블릿은 백엔드 쪽을 만들 때 사용 
		
		//서블릿에선 프론트 쪽 코드 다루기 힘들고
		//JSP는 자바 코드 다루기 어렵쥐
		
		out.print("<html><head><title>멋진 구구단</title>");
		out.print("<style>");
		out.print("table{background-color: black; color: white; }");
		out.print("td, th {border : solid white 3px; }");
		out.print("</style>");
		out.print("<table>");
		out.print("<meta charset=\"EUC-KR\">");
		out.print("<html lang=\"ko\">");
		out.print("</head></body>")
		;
		for(int gop = 0; gop<= 9; ++gop) {
			out.print("<tr>");
			for(int dan = 2; dan<= 9; ++dan ) {
				if(gop == 0) {
					out.print(String.format("<th>%d단</th>", dan));
				} else {
					out.print(String.format("<td>%d x %d = %d</td>", dan, gop, dan*gop)); //와 그렇네 이클에서 포문 돌리고 결과만 out.print()로 넣어주면 되겟네;;;;바본가	
				}
			}
		}
		out.print("</table>");	
		out.print("</body></html>");
	}
	
	
	
}

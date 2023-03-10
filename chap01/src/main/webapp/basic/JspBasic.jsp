<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import= "java.util.ArrayList, java.util.List" %> <%-- JSP에서 자바 import --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<h3># JSP의 처리 순서</h3>
	 
	 <ol>
	 	<li>JSP로 코드를 작성한다.</li>
	 	<li>
	 		
	 		JSP코드는 자바 코드 형태로 1차 변환된다.(Servlet 형태로 1차 변환) 
	 		JSP코드 > .java ----compile----> .class > add to Tomcat
	 		그리고 Tomcat 에서 .class파일을 실행하면 html코드가 나오는 것
	 	</li>
	 	<li>컴파일 후 실행 가능한 형태로 웹 컨테이너(Tomcat)에 등록된다.</li>
	 	<li>요청을 받으면 웹 컨테이너가 해당 프로그램을 실행해서 생성되는 HTML 코드를 응답한다.
	 		(JSP는 실행하면 HTML코드를 생성하는 프로그램이다.)
	 	</li>
	 	<li></li>
	 </ol>
	 
	 
	 	<%-- JSP Script --%>
	
	<%--
		<% %>	: 모든 자바 코드를 사용할 수 있는 영억. 메서드의 내부처럼 사용할 수 있는 영역
		<%= %>	: 원하는 값을 HTML에 출력
		<%! %>	: 함수를 선언할 수 있는 영역
		<%@ %>	: JSP 설정 영역
	 --%>	
	
	<%-- 
		이 주석은 컴파일러에게 처리되는 주석이기 때문에 html보다 먼저 처리된다.
		html의 주석은 웹브라우저까지 도착해야 처리되는 주석이다. 
	
	 --%>
	 
	 	 <%
	 	//메서드의 내부처럼 사용할 수 있는 영역
	 	//public static void rabbit(); //메서드 내부이기 때문에 이렇게 메서드를 선언할 수 없다는 뜻
	 	int a = 10;
	 	int b = 11;
	 	
	 	//클래스를 선언하는 것은 가능하다.
	 	class Apple { //그니까 이건 메서드 내부의 클래스가 되는 것
	 		int size;
	 		int color;
	 		Apple(int size, int color) {
	 			this.size = size;
	 			this.color = color;
	 		}
	 		
	 		public String toString() {
	 			return String.format("크기%d/%s번색", size, color);
	 		}
	 	}
	 	
	 	Apple apple1 = new Apple(123, 10);
	 	Apple apple2 = new Apple(444, 44);
	 	
		List<Apple> apples = new ArrayList<>();
		 
		for(int i = 0; i < 10; ++i) {
				apples.add(new Apple(i,i));
		}

	 %>



	<div><%= apple1 %></div>
	<div><%= apple2 %></div>
	<div><%= apples %></div>
	
	
	
		
	<table>
		<tr>
			<th>사과 크기</th>
			<th>사과 색깔</th>
		</tr>
	<% for(int i = 0; i<apples.size(); ++i) { %>
		<tr>
			<th><%= apples.get(i).size %>  </th>
			<th><%= apples.get(i).color %></th>
		</tr>
	<% } %>
	</table>
	
	
	
	
	<%
		for(int i = 0; i < 10; ++i) {
			rabbit();
		}
	
	
		//out 내장객체 : 출력 장소가 HTML인 미리 만들어져 있는 OutputStream
		out.print("&nbsp;&nbsp;/)/)<br>");
		out.print("(&nbsp;&nbsp;&nbsp;&nbsp;..)<br>");
		out.print("&nbsp;&nbsp;&nbsp;>$<br>");	
		
		
		for(int i = 0; i < 10; ++i){
			out.print(String.format("<a href=\"link%d\">링크%d</a><br>", i, i));
		}
	%>

	
	<%!
		//클래스의 내부, 메서드 바같처럼 사용할 수 있는 영역
		public void rabbit() { //static은 빼도 될 것. 왜냐면 여기 자체가 인스턴스가 생긴 곳이니까?
			System.out.println(" /)/)");
			System.out.println("(    )");
			System.out.println("(   >ㅗ)");
		}	
	%>


</body>
</html>
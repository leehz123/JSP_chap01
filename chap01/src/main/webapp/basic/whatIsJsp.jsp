<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>What is JSP</title>
</head>
<body>

	<h3># Dynamic Web Project</h3>
	
	<ul>
		<li>src/main/java	: 자바 코드를 작성하는 곳. 이 폴더에 들어 있는 파일들은 컴파일 대상</li>
		<li>src/main/webapp	: 웹 서버에 의해 서비스될 웹 자원들을 보관하는 곳 (요청을 받으면 이곳의 자원들을 가지고 있다가 클라이언트에게 응답한다.)</li>
	</ul>

	<h3># Apache-Tomcat</h3>
	<ul>
		<li>Apache Web Server : 보관하고 있는 html을 응답하는 웹서버</li>
		<li>Tomcat : 자바 문법을 활용한 웹 페이지(JSP)를 해석하여 아파치에게 html 형태로 전달하는 웹 컨테이너 역할을 수행</li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
	
	<h3># JSP란 무엇인가?</h3>
	<%
		String color1 = "red", color2 = "purple", color3 = "peru";
		//여기에 자바 코드를 적어서 사용하는 것도 가능
	%>
	<ul style="background: <%=color3%>;">
		<li style="background: <%=color1%>;">JSP : Java Server Page</li>
		<li style="background: <%=color2%>;">자바를 활용하여 웹페이지를 좀 더 동적으로(상황에 따라 변하게) 만들고자 생긴 API</li>
		<li>자바 코드가 섞여 있기 때문에 일반 HTML과 다르게 컴파일 및 해석 과정이 필요하다.</li>
		<li>컴파일은 JDK가 하고, 컴파일된 결과물에 대한 실행은 웹 컨테이너(톰캣...)가 담당한다.</li>
		<li></li>
	</ul>
	
</body>
</html>
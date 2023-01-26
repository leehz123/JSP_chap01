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
		<li>src/main/java	: �ڹ� �ڵ带 �ۼ��ϴ� ��. �� ������ ��� �ִ� ���ϵ��� ������ ���</li>
		<li>src/main/webapp	: �� ������ ���� ���񽺵� �� �ڿ����� �����ϴ� �� (��û�� ������ �̰��� �ڿ����� ������ �ִٰ� Ŭ���̾�Ʈ���� �����Ѵ�.)</li>
	</ul>

	<h3># Apache-Tomcat</h3>
	<ul>
		<li>Apache Web Server : �����ϰ� �ִ� html�� �����ϴ� ������</li>
		<li>Tomcat : �ڹ� ������ Ȱ���� �� ������(JSP)�� �ؼ��Ͽ� ����ġ���� html ���·� �����ϴ� �� �����̳� ������ ����</li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
	
	<h3># JSP�� �����ΰ�?</h3>
	<%
		String color1 = "red", color2 = "purple", color3 = "peru";
		//���⿡ �ڹ� �ڵ带 ��� ����ϴ� �͵� ����
	%>
	<ul style="background: <%=color3%>;">
		<li style="background: <%=color1%>;">JSP : Java Server Page</li>
		<li style="background: <%=color2%>;">�ڹٸ� Ȱ���Ͽ� ���������� �� �� ��������(��Ȳ�� ���� ���ϰ�) ������� ���� API</li>
		<li>�ڹ� �ڵ尡 ���� �ֱ� ������ �Ϲ� HTML�� �ٸ��� ������ �� �ؼ� ������ �ʿ��ϴ�.</li>
		<li>�������� JDK�� �ϰ�, �����ϵ� ������� ���� ������ �� �����̳�(��Ĺ...)�� ����Ѵ�.</li>
		<li></li>
	</ul>
	
</body>
</html>
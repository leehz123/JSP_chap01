<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import= "java.util.ArrayList, java.util.List" %> <%-- JSP���� �ڹ� import --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<h3># JSP�� ó�� ����</h3>
	 
	 <ol>
	 	<li>JSP�� �ڵ带 �ۼ��Ѵ�.</li>
	 	<li>
	 		
	 		JSP�ڵ�� �ڹ� �ڵ� ���·� 1�� ��ȯ�ȴ�.(Servlet ���·� 1�� ��ȯ) 
	 		JSP�ڵ� > .java ----compile----> .class > add to Tomcat
	 		�׸��� Tomcat ���� .class������ �����ϸ� html�ڵ尡 ������ ��
	 	</li>
	 	<li>������ �� ���� ������ ���·� �� �����̳�(Tomcat)�� ��ϵȴ�.</li>
	 	<li>��û�� ������ �� �����̳ʰ� �ش� ���α׷��� �����ؼ� �����Ǵ� HTML �ڵ带 �����Ѵ�.
	 		(JSP�� �����ϸ� HTML�ڵ带 �����ϴ� ���α׷��̴�.)
	 	</li>
	 	<li></li>
	 </ol>
	 
	 
	 	<%-- JSP Script --%>
	
	<%--
		<% %>	: ��� �ڹ� �ڵ带 ����� �� �ִ� ����. �޼����� ����ó�� ����� �� �ִ� ����
		<%= %>	: ���ϴ� ���� HTML�� ���
		<%! %>	: �Լ��� ������ �� �ִ� ����
		<%@ %>	: JSP ���� ����
	 --%>	
	
	<%-- 
		�� �ּ��� �����Ϸ����� ó���Ǵ� �ּ��̱� ������ html���� ���� ó���ȴ�.
		html�� �ּ��� ������������ �����ؾ� ó���Ǵ� �ּ��̴�. 
	
	 --%>
	 
	 	 <%
	 	//�޼����� ����ó�� ����� �� �ִ� ����
	 	//public static void rabbit(); //�޼��� �����̱� ������ �̷��� �޼��带 ������ �� ���ٴ� ��
	 	int a = 10;
	 	int b = 11;
	 	
	 	//Ŭ������ �����ϴ� ���� �����ϴ�.
	 	class Apple { //�״ϱ� �̰� �޼��� ������ Ŭ������ �Ǵ� ��
	 		int size;
	 		int color;
	 		Apple(int size, int color) {
	 			this.size = size;
	 			this.color = color;
	 		}
	 		
	 		public String toString() {
	 			return String.format("ũ��%d/%s����", size, color);
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
			<th>��� ũ��</th>
			<th>��� ����</th>
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
	
	
		//out ���尴ü : ��� ��Ұ� HTML�� �̸� ������� �ִ� OutputStream
		out.print("&nbsp;&nbsp;/)/)<br>");
		out.print("(&nbsp;&nbsp;&nbsp;&nbsp;..)<br>");
		out.print("&nbsp;&nbsp;&nbsp;>$<br>");	
		
		
		for(int i = 0; i < 10; ++i){
			out.print(String.format("<a href=\"link%d\">��ũ%d</a><br>", i, i));
		}
	%>

	
	<%!
		//Ŭ������ ����, �޼��� �ٰ�ó�� ����� �� �ִ� ����
		public void rabbit() { //static�� ���� �� ��. �ֳĸ� ���� ��ü�� �ν��Ͻ��� ���� ���̴ϱ�?
			System.out.println(" /)/)");
			System.out.println("(    )");
			System.out.println("(   >��)");
		}	
	%>


</body>
</html>
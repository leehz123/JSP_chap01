# JSP_chap01

## [src/main/java/chap1\]

### ServletBasic.java
#### 서블릿 기초 <%! 훤하는 메소드 추가할 수 있는 부분. 클래스 내부 %> <% 사용자가 요청을 보내면 처리해주는 부분. 메소드 내부 %> <%@ 그 외 설정 %>
@WebServlet("/servlet/gugudan")

PrintWriter out = resp.getWriter();


---


## [src\main\java\webapp\basic\]


### hello.html
#### 프로젝트 폴더 서버에 연결해서 접속하는 법
Window - Show view - Servers

Servers -Tomcat v9.0 Server at localhost[Stopped, Requblish] - add and remove.. - 서버에 올리고 싶은 프로젝트 선택

ctrl + f11 누르면 실행

#### Emmet 설치(자동 완성; 단축키 tap 또는 ctrl+e)
Help-Eclipse Market Place... 들어가서 Emmet 검색 후 instal

### httpProtocol.jsp
#### HTTP 프로토콜 작동 순서(웹툰 예시)
링크태그 클릭- 클라에서 ip나 도메인 통해 request - 웹서버에서 요청에 맞게 페이지 생성 후 response 

- 클라의 웹브에서 페이지(HTML, CSS, JS로 구성) 해석 - 클라에게 페이지 표시됨 - 해당 페이지를 통해 새로운 요청 ... 반복 

#### HTTP 요청방식(method)
GET(SELECT), POST(INSERT), PUT(UPDATE), DELETE(DELETE), 그 외 TRACE, PATCH 기타등등

### JSPBasic.jsp 





 
 
---

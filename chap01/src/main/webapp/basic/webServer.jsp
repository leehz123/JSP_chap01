<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Web Server</title>
</head>
<body>


	<h3># URL의 구조</h3>
	<p>프로토콜://IP주소(DNS를 쓰기도 함):포트번호/원하는 자원의 경로(URL)</p>

	<hr>

	<h3># 프로토콜 (Protocol)</h3>
	<ul>
		<li>통신규칙</li>
		<li>ex> HTTP는 서버로 요청을 보내면 응답을 받는다.</li>
		<li>http(80), https(20), ftp(443), telnet(23) ... 등등</li>
		<li>각 프로토콜마다 주로 사용하는 포트 번호가 있다.(기본 포트번호)</li>
		<li>하지만, 해당 포트 번호를 반드시 사용할 필요는 없다.(그래서 우리가 8888을 쓰고 있쥐)</li>
		<li>
			해당 프로토콜이 주 포트번호를 사용한다면 :port 를 생략할 수 있다.
			ex> http://www.naver.com:80, https://www.naver.com:443 에서 :80과 :443을생략할 수 있다. 
		</li>
	</ul>
	
	<hr>

	<h3># IP주소</h3>

	<ul>
		<li>전 세계 네트워크 상에서 어떤 한 컴퓨터를 찾아가기 위한 주소</li>
		<li>0.0.0.0 ~ 255.255.255.255(4byte)</li>
		<li>공인IP (진짜IP주소) 하나에 사설 IP(192.168...) 여러 개를 붙여 사용</li>
	</ul>

	<hr>

	<h3># DNS</h3>
	<p>URl주소를 키값으로 넣으면 IP주소를 밸류로 돌려주는 서비스 (구글 DNS 들어갈 때도 있고 KT DNS들어갈 때도 있고...)</p>
	<ul>
		<li>URL에 IP주소 대신 입력할 수 있는 이름</li>
		<li>IP주소를 외우기 힘들어서 대신 외우기 쉬운 이름으로 치환해주는 서비스</li>
		<li>URL에 IP주소 대신 도메인을 사용하면 근처의 DNS서버에 들러서 IP주소를 찾은 후 서버를 찾아간다</li>
	</ul>
	
	<hr>
	
	<h3># 포트번호</h3>
	<p>카트 켜놓고 바람의 나라 켜놓고 크아 켜놓고 크아에서 채팅하면 카트랑 바람의 나라에도 동시 채팅이 되지 않는거</p>
	<ul>
		<li>네트워크를 통해 도착한 데이터가 어떤 프로그램의 데이터인지 구분하기 위한 번호</li>
		<li>0~ 65535번까지 있다.</li>
		<li>
			고정적으로 사용하는 잘 알려진 포트번호(well-known port)가 있다. 
			( 잘 알려진 포트번호 구글링 ㄱㄱ. 0~1023번까지는 사용하지 않는 것이 좋대 http://wiki.hash.kr/index.php/%ED%8F%AC%ED%8A%B8 )
		</li>
		<li>잘 알려진 포트번호들은 URL에서 생략 가능</li>
	</ul>
	
	<hr>
	
	

</body>
</html>
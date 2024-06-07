<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Hello JSP world</title>

</head>

<body>

<script> 
alert("welcome!");
let choice = confirm("Ready to go?");
let name = "";
if (choice == true) {
    name = prompt("What is your name");
}
if (name) {
    alert(`Hi! ${name}!`);
}
</script>

<!--  사용자로부터 name을 받아서 환영 메시지를 출력 -->
	<%
	String name = request.getParameter("name");
	if (name == null) {
		name = "Anonymous";
	}
	%>
	<h1> Hello, JSP </h1>
	<p> Welcome <%= request.getParameter("name") %></p>
	<p> 이것은 JSP로 만들어진 동적 페이지입니다. </p>

	<h3> GET 전송 </h3>
	<p><a href = "/HelloWorld/hello.jsp"> GET hello.jsp 호출 </a></p>
	<p><a href = "/HelloWorld/hs">GET /hs -> HelloServlet 호출 </a></p>
	
</body>
</html>
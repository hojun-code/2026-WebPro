<%@ page import="com.example.demo.MemberDto" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>06 - App</title>
</head>
<body>
    <jsp:include page="link.jsp"/>
    <h1>app</h1>

<%
    MemberDto member = new MemberDto();
    member.setUserId("admin");
    member.setUserName("관리자");
    member.setEmail("hong@dy.ac.kr");
    application.setAttribute("member", member);
%>

</body>
</html>

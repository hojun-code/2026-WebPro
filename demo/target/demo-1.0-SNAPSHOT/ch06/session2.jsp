<%@ page import="com.example.demo.MemberDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>06 - session2</title>
</head>
<body>
<jsp:include page="link.jsp"/>
<h1>session2.jsp</h1>

<jsp:include page="page1.jsp"/>
<jsp:include page="page2.jsp"/>
<%--    <%@include file="page2.jsp"%>--%>

<br/>

<div class="box">
    <%
        Object obj = application.getAttribute("member");
        if (obj != null) {
            MemberDto member = (MemberDto) obj;

            out.println("<p>application 객체</p>");
            out.println("<p>userId: " + member.getUserId() + "</p>");
            out.println("<p>userName: " + member.getUserName() + "</p>");
        }
    %>
</div>

</body>
</html>

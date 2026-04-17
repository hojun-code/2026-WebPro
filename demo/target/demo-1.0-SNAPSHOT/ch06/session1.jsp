<%@ page import="com.example.demo.MemberDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>06 - session1</title>
</head>
<body>
<jsp:include page="link.jsp"/>
<h1>session1.jsp</h1>

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

<%
    MemberDto sessionMember = new MemberDto();
    sessionMember.setUserId("session admin");
    sessionMember.setUserName("세션 관리자");
    sessionMember.setEmail("session-hong@dy.ac.kr");

    session.setAttribute("member", sessionMember);
%>

</body>
</html>

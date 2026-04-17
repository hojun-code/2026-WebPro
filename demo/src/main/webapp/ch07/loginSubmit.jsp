<%@ page import="com.example.demo.ch07.CookieUtils" %><%--
  Created by IntelliJ IDEA.
  User: 214
  Date: 26. 4. 17.
  Time: 오전 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 처리</title>
</head>
<body>
<%
    String loginId = request.getParameter("loginId");
    String password = request.getParameter("password");
    String saveIdYn = request.getParameter("saveIdYn");

    boolean loginYn = false;

    if ("admin".equals(loginId) && "12345".equals(password)) {
        loginYn = true;
        //response.sendRedirect("index.jsp");
    }

    CookieUtils.removeSaveId(response);

    if (loginYn && "1".equals(saveIdYn)) {
        CookieUtils.addSaveId(response, loginId);
    }
%>

<% if (loginYn) { %>
<p>성공적으로 로그인하였습니다.</p>
<div>
    <a href="index.jsp">메인으로 이동</a>
</div>
<% } else { %>
<p>로그인에 실패하였습니다.</p>
<div>
    <a href="login.jsp">다시 시도</a>
</div>
<% } %>

</body>
</html>

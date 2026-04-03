<%@ page import="com.example.demo.MemberDto" %>
<%@ page import="com.example.demo.MemberService" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
<%
    // 한글을 위한 인코딩 설정
    request.setCharacterEncoding("utf-8");

    String userId = request.getParameter("userId");
    String userName = request.getParameter("userName");
    String userEmail = request.getParameter("email");
    String password = request.getParameter("password");

    MemberDto member = new MemberDto();
    member.setUserId(userId);
    member.setUserName(userName);
    member.setEmail(userEmail);
    member.setPassword(password);

    MemberService memberService = new MemberService();
    boolean result = memberService.register(member);
%>

<%if (result) {%>
<h1>회원가입에 성공하였습니다.</h1>
<%} else {%>
<script>
    alert('회원가입에 실패했습니다.');
    history.back();
</script>
<%}%>

<%--    <p>아이디: <%=userId%></p>--%>
<%--    <p>이름: <%=userName%></p>--%>
<%--    <p>이메일: <%=userEmail%></p>--%>
<%--    <p>비밀번호: <%=password%></p>--%>
</body>
</html>

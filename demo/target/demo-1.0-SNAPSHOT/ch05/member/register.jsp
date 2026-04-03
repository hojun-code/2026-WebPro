<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <!-- 회원가입 -->
    <form action="./registerSubmit.jsp" method="post">
        <table style="border: 1px solid black;">
            <tr>
                <th>
                    <label for="userId">아이디</label>
                </th>
                <td>
                    <input id="userId" name="userId" placeholder="아이디를 입력해주세요" required />
                </td>
            </tr>
            <tr>
                <th>
                    <label for="userName">이름</label>
                </th>
                <td>
                    <input id="userName" name="userName" placeholder="이름을 입력해주세요" required />
                </td>
            </tr>
            <tr>
                <th>
                    <label for="email">이메일</label>
                </th>
                <td>
                    <input id="email" name="email" type="email" placeholder="이메일을 입력해주세요" required />
                </td>
            </tr>
            <tr>
                <th>
                    <label for="password">비밀번호</label>
                </th>
                <td>
                    <input id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요" required />
                </td>
            </tr>
            <tr>
                <td><button type="reset">초기화</button></td>
                <td><button type="submit">회원가입</button></td>
            </tr>
        </table>
    </form>
</body>
</html>

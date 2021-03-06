    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%--
          Created by IntelliJ IDEA.
          User: Admin
          Date: 11.02.2020
          Time: 2:39
          To change this template use File | Settings | File Templates.
        --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color update</title>
</head>
<body>
    <style>
        html {
        display: flex;
        justify-content: center;
        }

        body {
        margin-top: 50px;
        align-content: center;
        background: linear-gradient(100deg, rgba(66, 80, 245, 0.8) 0%, rgba(66, 80, 245, 0.4) 100%);
        font-family: "Roboto", sans-serif;
        }

        label {
        float: left;
        padding-right: 10px;
        }

        .field {
        clear: both;
        text-align: right;
        line-height: 25px;
        }

        .main {
        margin: 30px;
        float: left;
        text-align: center;
        }

        #admin-page {
        color: #a60305;
        }
    </style>
        <li>ID: <c:out value="${requestScope.color.id}"/></li><br/>
        <li>Color name: <c:out value="${requestScope.color.name}"/></li><br/>
        <div class="main">
            <form method="post" action="<c:url value='/admin/update-color'/>">
            <div class="field">
                <label>New color name:</label>
                <input type="text" name="name"/>
            </div>

            <label><input type="number" hidden name="id" value="${requestScope.color.id}"/></label><br/>
            <input type="submit" value="Ok" name="Ok"><br>
            </form>
        <div><a href="/admin/color-index"><u id="admin-page">Back to Panel Management</u></a><br></div>
        </div>
</body>
</html>

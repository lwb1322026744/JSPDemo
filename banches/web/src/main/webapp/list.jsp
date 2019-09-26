<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px" width="70%">
    <thead>
    <th>网点名称</th>
    <th>所有城区</th>
    <th>网点地址</th>
    <th>联系电话</th>
    </thead>
    <tbody>
    <c:if test="${not empty brancheInfo}">
        <c:forEach items="${brancheInfo}" var="branche" varStatus="sta">
            <tr>
                <td>${branche.name}</td>
                <td>${branche.cityArea}</td>
                <td>${branche.address}</td>
                <td>${branche.telephone}</td>
            </tr>
        </c:forEach>
    </c:if>
    </tbody>
</table>
</body>
</html>

<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link rel="stylesheet" href="/resources/CSS/style.css">
    <title>
       ������̬
    </title>
</head>

<body bgcolor="#ffffff">
<c:if test="${sessionScope.customer.pow.equals('1')}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.customer.pow.equals('2')}">
    <jsp:include page="mtop.jsp"/>
</c:if>
<table width="785" border="1" height="117" border="1" align="center" cellpadding="0" cellspacing="0" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
        <td height="38" align="center" colspan="6">��̬��Ϣ</td>
    </tr>
<c:if test="${sessionScope.customer.pow.equals('2')}">
    <tr>
        <td width="786" align="center" height="27" colspan="9">
            <p align="right"> <a href="/admin/active_add">������Ϣ...</a></td>
    </tr>
</c:if>
    <tr>
        <td width="108" height="29" align="center">ID</td>
        <td width="108" height="29" align="center">����</td>
        <td width="108" height="29" align="center">����</td>
        <td width="209" height="29" align="center">��������</td>
        <td width="245" height="29" align="center">����</td>

    </tr>

<c:forEach var="page" items="${page.list}">
    <tr>
        <td width="108" height="32" align="center">${page.id}</td>
        <td width="108" height="32" align="center">${page.title}</td>
        <td width="108" height="32" align="center">${page.author}</td>
        <td width="209" height="32" align="center"><fmt:formatDate value="${page.issueDate}"   pattern="yyyy-MM-dd HH:mm:ss" type="date" dateStyle="long" /></td>
        <td width="245" height="32" align="center">
            <a href="#"onClick="window.open('/active_show?id=${page.id}','','width=790,height=530');">��ϸ</a></td>
    </tr>
</c:forEach>
    <tr>
        <td height="30" colspan="9" align="right">

            <table width="786" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="786" height="30" colspan="9" align="right">
                        ��${page.pages}ҳ&nbsp;&nbsp;
                        <a href="/active_select?page=${page.firstPage}">��һҳ</a>&nbsp;&nbsp;
                        <a href="/active_select?page=${page.prePage}">��һҳ</a>&nbsp;&nbsp;
                        <a href="/active_select?page=${page.nextPage}">��һҳ</a>&nbsp;&nbsp;
                        <a href="/active_select?page=${page.lastPage}">���һҳ</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

</table>
</body>
</html>

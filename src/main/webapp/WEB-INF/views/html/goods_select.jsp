<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link rel="stylesheet" href="/resources/CSS/style.css">
    <title>
        ������Ϣ
    </title>
</head>
<c:if test="${sessionScope.customer.pow.equals('1')}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.customer.pow.equals('2')}">
    <jsp:include page="mtop.jsp"/>
</c:if>
<table width="786"  border="1" align="center" cellpadding="0" cellspacing="0"  bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
        <td width="786" colspan="9">

            <p align="center">������Ϣ
        </td>
    </tr>
    <tr>
        <td width="786" height="30" colspan="9" align="right"><a href="/goods_add">������Ϣ...</a></td>
    </tr>
    <tr align="center">
        <td width="786" height="29" align="center">��������</td>
        <td width="786" height="29" align="center">��������</td>
        <td width="786" height="29" align="center">��������</td>
        <td width="786" height="29" align="center">������λ</td>
        <td width="786" height="29" align="center">��ʼʡ��</td>
        <td width="786" height="29" align="center">��ʼ����</td>
        <td width="786" height="29" align="center">�ִ�ʡ��</td>
        <td width="786" height="29" align="center">�ִ����</td>
        <td width="786" height="29">����</td>
    </tr>
<c:forEach var="page" items="${page.list}">
    <tr>
        <td width="786" height="29" align="center">${page.goodsStyle}</td>
        <td width="786" height="29" align="center">${page.goodsName}</td>
        <td width="786" height="29" align="center">${page.goodsNumber}</td>
        <td width="786" height="29" align="center">${page.goodsUnit}</td>
        <td width="786" height="29" align="center">${page.goodsUnit}</td>
        <td width="786" height="29" align="center">${page.startCity}</td>
        <td width="786" height="29" align="center">${page.endProvince}</td>
        <td width="786" height="29" align="center">${page.endCity}</td>
        <td width="786" height="29"> <p align="center">
            <a href="/goods_xiangxi?id=${page.id}">��ϸ</a></td>
    </tr>
</c:forEach>
    <tr>
        <td width="786" height="30" colspan="9" align="right">

            <table width="786" align="center">
                <tr>
                    <td width="786" height="30" colspan="9" align="right">
                        ��${page.pages}ҳ&nbsp;&nbsp;
                        <a href="/goods_select?page=${page.firstPage}">��һҳ</a>&nbsp;&nbsp;
                        <a href="/goods_select?page=${page.prePage}">��һҳ</a>&nbsp;&nbsp;
                        <a href="/goods_select?page=${page.nextPage}">��һҳ</a>&nbsp;&nbsp;
                        <a href="/goods_select?page=${page.lastPage}">���һҳ</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

</table>
</body>
</html>

<%@ page contentType="text/html; charset=gb2312" import="java.sql.*, java.io.*"%>
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


<body bgcolor="#ffffff">
<c:if test="${sessionScope.customer.pow.equals('1')}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.customer.pow.equals('2')}">
    <jsp:include page="mtop.jsp"/>
</c:if>
<table width="786" height="137" border="1" align="center" cellpadding="0" cellspacing="0" bordercolorlight="#FFFFFF" bordercolordark="#333333">
  <tr>
  <td width="786" colspan="9" height="60">
      <p align="center">������Ϣ
  </td>
  </tr>
  <tr>
    <td width="786" height="30" colspan="9" align="right">

   <a href="/car_add">������Ϣ...</a></td>
  </tr>
  <tr>
    <td width="11%" height="29" align="center">���ƺ���</td>
   <td width="11%" height="29" align="center">����Ʒ��</td>
   <td width="11%" height="29" align="center">����</td>
    <td width="11%" height="29" align="center">��������</td>
    <td width="11%" height="29" align="center">��ʹ��</td>
    <td width="11%" height="29" align="center">��ʻԱ����</td>
    <td width="11%" height="29" align="center">��������</td>
    <td width="12%" height="29">
   <p align="center">����</td>
</tr>
    <c:forEach var="page" items="${page.list}">
<tr>
<td width="11%" height="29" align="center">${page.licenceNumber}</td>
<td width="11%" height="29" align="center">${page.driverName}</td>
<td width="11%" height="29" align="center">${page.style}</td>
<td width="11%" height="29" align="center">${page.carload}��</td>
<td width="11%" height="29" align="center">${page.driverTime}��</td>
<td width="15%" height="29" align="center">${page.userTime}��</td>
<td width="11%" height="29" align="center">${page.transpotStyle}</td>
<td width="12%" height="29" align="center"><a href="/car_show?id=${page.code}">��ϸ</a></td>
</tr>
</c:forEach>
<tr>
    <td width="786" height="30" colspan="9" align="right">

<table width="786" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="786" height="30" colspan="9" align="right">
      ��${page.pages}ҳ&nbsp;&nbsp;
        <a href="/car_select?page=${page.firstPage}">��һҳ</a>&nbsp;&nbsp;
        <a href="/car_select?page=${page.prePage}">��һҳ</a>&nbsp;&nbsp;
        <a href="/car_select?page=${page.nextPage}">��һҳ</a>&nbsp;&nbsp;
        <a href="/car_select?page=${page.lastPage}">���һҳ</a>
  
</td>
</tr>
</table>
</td>
  </tr>

</table>
</body>
</html>

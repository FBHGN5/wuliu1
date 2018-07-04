<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="/resources/CSS/style.css">
<title>
��ҵ��Ϣ
</title>
</head>

<body bgcolor="#ffffff">
<c:if test="${sessionScope.customer.pow.equals('1')}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.customer.pow.equals('2')}">
    <jsp:include page="mtop.jsp"/>
</c:if>
<table border="1" width="786" align="center" cellpadding="0" cellspacing="0"bordercolordark="#333333" bordercolorlight="#FFFFFF">
<tr>
    <td width="786" align="center" colspan="9" height="32">��ҵ��Ϣ</td>
  </tr>
<tr>
    <td width="786" align="center" height="27" colspan="9">
      <p align="right"> <a href="/enterprise_add">������Ϣ...</a></td>
  </tr>

  <tr>
    <td width="11%" align="center" height="27">��ҵ����</td>
    <td width="11%" align="center" height="27">��ҵ����</td>
    <td width="11%" align="center" height="27">��Ӫ��Χ</td>
    <td width="11%" align="center" height="27">��������</td>
    <td width="17%" align="center" height="27">��ַ</td>
    <td width="11%" align="center" height="27">����</td>
  </tr>
<c:forEach var="page" items="${page.list}">
 <tr>
    <td width="11%" align="center" height="27">${page.enterpriseSort}</td>
    <td width="11%" align="center" height="27">${page.enterpriseName}</td>
    <td width="11%" align="center" height="27">${page.operation}</td>
    <td width="11%" align="center" height="27">${page.workArea}</td>
    <td width="18%" align="center" height="27">${page.address}</td>
    <td width="11%" align="center" height="27"><a href="/enterprise_show/?id=${page.id}">��ϸ</a>��</td>
  </tr>
</c:forEach>
<tr>
    <td width="786" height="30" colspan="9" align="right">
<table width="786" align="center" cellpadding="0" cellspacing="0">
	<tr>
        <td width="786" height="30" colspan="9" align="right">
            ��${page.pages}ҳ&nbsp;&nbsp;
            <a href="/enterprise_select?page=${page.firstPage}">��һҳ</a>&nbsp;&nbsp;
            <a href="/enterprise_select?page=${page.prePage}">��һҳ</a>&nbsp;&nbsp;
            <a href="/enterprise_select?page=${page.nextPage}">��һҳ</a>&nbsp;&nbsp;
            <a href="/enterprise_select?page=${page.lastPage}">���һҳ</a>
        </td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>

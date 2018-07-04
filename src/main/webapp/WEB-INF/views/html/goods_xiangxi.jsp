<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link rel="stylesheet" href="/resources/CSS/style.css">
    <title>
     ������ϸҳ
    </title>
</head>

<body bgcolor="#ffffff">
<c:if test="${sessionScope.customer.pow.equals('1')}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.customer.pow.equals('2')}">
    <jsp:include page="mtop.jsp"/>
</c:if>
<table width="785" height="480" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
        <td width="100%" height="52" colspan="4" align="center">
            ������ϸ��Ϣ</td>
    </tr>

    <tr>
        <td width="17%" height="29" align="center">�������ͣ�</td>
        <td width="36%" height="29" align="center">${goodsMsg.goodsStyle}</td>
        <td width="17%" height="29" align="center" valign="middle">�������ƣ�</td>
        <td width="30%" height="29" align="center">${goodsMsg.goodsName}</td>
    </tr>
    <tr>
        <td width="17%" height="29" align="center">����������</td>
        <td width="36%" height="29" align="center">${goodsMsg.goodsNumber}</td>
        <td width="17%" height="29" align="center" valign="middle">������λ��</td>
        <td width="30%" height="29" align="center"> ${goodsMsg.goodsUnit}</td>
    </tr>
    <tr>
        <td width="17%" height="29" align="center">��ʼʡ�ݣ�</td>
        <td width="36%" height="29" align="center">${goodsMsg.startProvince}</td>
        <td width="17%" height="29" align="center" valign="middle">��ʼ���У�</td>
        <td width="30%" height="29" align="center">${goodsMsg.startCity}</td>
    </tr>
    <tr>
        <td width="17%" height="29" align="center">�ִ�ʡ�ݣ�</td>
        <td width="36%" height="29" align="center">${goodsMsg.endProvince}</td>
        <td width="17%" height="29" align="center" valign="middle">�ִ���У�</td>
        <td width="30%" height="29" align="center">${goodsMsg.endCity}</td>
    </tr>
    <tr>
        <td width="17%" height="30" align="center">�������ͣ�</td>
        <td width="36%" height="30" align="center"> ${goodsMsg.style}</td>
        <td width="17%" height="30" align="center" valign="middle">����ʱ�䣺</td>
        <td width="30%" height="30" align="center">${goodsMsg.transportTime}</td>
    </tr>
    <tr>
        <td width="17%" height="29" align="center">��ϵ�绰��</td>
        <td width="36%" height="29" align="center">${goodsMsg.phone}</td>
        <td width="17%" height="29" align="center" valign="middle">��ϵ�ˣ�</td>
        <td width="30%" height="29" align="center">${goodsMsg.link}</td>
    </tr>
    <tr>
        <td width="17%" height="31" align="center">����ʱ�䣺</td>
        <td width="36%" height="31" align="left" colspan="3"><fmt:formatDate value="${goodsMsg.issueDate}"   pattern="yyyy-MM-dd HH:mm:ss" type="date" dateStyle="long" /></td>

    </tr>
    <tr>
        <td width="17%" height="1" align="center">��ע��</td>
        <td width="83%" height="1" align="center" colspan="3">
            <p align="left"><textarea rows="3" name="S1" cols="76">${goodsMsg.remark}</textarea></td>
    </tr>
    <tr>
        <td width="17%" height="52" align="center">����Ҫ��</td>
        <td width="83%" height="52" align="center" colspan="3">
            <p align="left"><textarea rows="3" name="S1" cols="76">${goodsMsg.request}</textarea></td>
    </tr>
    <tr>

        <td width="17%" height="31" align="center">�����ˣ�</td>
        <td width="36%" height="31" align="left" colspan="3">${goodsMsg.userName}</td>

    </tr>
<c:if test="${goodsMsg.userName.equals(sessionScope.customer.name)||sessionScope.customer.pow.equals('2')}">
    <tr>
        <td width="100%" height="45" colspan="4" align="center">
            <a href="/goods_change?id=${goodsMsg.id}">�޸�</a>&nbsp;&nbsp;
            <a href="/del3?id=${goodsMsg.id}">ɾ��</a></td>
    </tr>

</c:if>
</table>
</body>
</html>

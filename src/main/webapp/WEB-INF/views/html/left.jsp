<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<table width="202" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="202"><img src="/resources/image/7.jpg" width="202" height="39"></td>
    </tr>
</table>

<table width="202" border="0" cellpadding="0" cellspacing="0" background="/resources/image/8.jpg" >
    <tr>
        <td>
            <c:if test="${sessionScope.customer==null}"><form method="POST" action="/check" name="form_u">
            <table width="91%"  height="87"  border="0" cellpadding="0" cellspacing="0">
                <h3 id="h3" style="color:red">${error}</h3>
                <tr>
                    <td width="32%" height="30" align="center" valign="bottom"><div align="right">�û���</div></td>
                    <td width="68%" align="center" valign="bottom"><input name="name" type="text" size="16" maxlength="20"></td>
                </tr>
                <tr>
                    <td height="30" align="center"><div align="right">����</div></td>
                    <td height="20" align="center"><input type="password" name="password" size="16" maxlength="20"></td>
                </tr>
                <tr>
                    <td height="40" colspan="2" align="center" valign="middle">
                        <input type="submit" value="�ύ" name="login" onClick="return check1()">
                        &nbsp;<input type="reset" value="����"><br><br>
                        <a href="/register">��ע��</a>
                        &nbsp;<a href="/found">�һ�����</a></td>
                </tr>
            </table>
        </form>
            </c:if>

            <c:if test="${sessionScope.customer!=null}">
            <table width="92%" height="18"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td  height="18" align="center">��ӭ${sessionScope.customer.name}����</td>
                </tr>
            </table>
            </c:if>
            <table width="100" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td><img src="/resources/image/9.jpg" width="201" height="5"></td>
                </tr>
            </table>
        </td>
    </tr>
</table><img src="/resources/image/111.jpg" >

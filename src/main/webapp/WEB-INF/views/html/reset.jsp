<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<link href="CSS/style.css" type="text/css" rel="stylesheet">
<html>
<head>
    <title>�һ����봰��</title>
</head><script language="javascript">

    function check(){
        if(form1.password.value!=form1.repassword.value){
            alert("��������������벻һ��!");
            return false;
        }
        if(form1.password.value==""){
            alert("��������ע�������");
            form1.password.focus();
            return false;
        }
        if(form1.repassword.value==""){
            alert("������ȷ������");
            form1.repassword.focus();
            return false;
        }
    }
</script>
<body>

<br>  <form action="/changepassword" name="form1" method="post">
    <table width="502" height="213" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#E8FFFF" class="tableBorder">
        <tr>
            <td height="43" colspan="4" align="center" class="head">&nbsp;</td>
        </tr>
        <tr>
            <td width="33" rowspan="4" align="center" valign="middle" >&nbsp;</td>
            <td width="176" height="23">������:    </td>
            <td width="258"><input name="password" type="text" size="31"></td>
            <td width="35" rowspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td height="23">ȷ�����룺</td>
            <td height="23"><input name="repassword" type="text" size="31"></td>
        </tr>
        <tr align="center">
            <td height="46" colspan="4">
                <input name="Submit" type="submit" value="�޸�" onClick="return check()">
                &nbsp;
                <input name="Submit2" type="reset" value="����">
                &nbsp;&nbsp;<a href="/index">���ص���ҳ</a>
            </td>
        </tr>

    </table>  </form>
</body>
</html>

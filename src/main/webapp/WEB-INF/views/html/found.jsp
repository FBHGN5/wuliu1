<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<link href="/resources/CSS/style.css" type="text/css" rel="stylesheet">
<html>
<head>
    <title>�һ����봰��</title>
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
</head><script language="javascript">

    function check(){
        if(form1.username.value==""){
            alert("���������һ�����̫��Ц��");
            form1.username.focus();
            return false;

        }
        if(form1.email.value==""){
            alert("���������Emailַ");
            form1.email.focus();
            return false;
        }
        if(form1.question.value==""){
            alert("��������ʾ������");
            form1.question.focus();
            return false;
        }
        if(form1.result.value==""){
            alert("��������ʾ����Ĵ�");
            form1.result.focus();
            return false;

        }
    }
    $(function () {
        $("#find").click(function () {
            console.log($("#name").val());
            if($("#name").val().length!=0)
            {
                $.post("/findpro",{name:$("#name").val()},function (result) {
                    $("#qe").val(result.question);
                })
            }
            else{
                alert("�������û�����");
            }

        });
    })
</script>

<body>

<br>  <form action="/foundPassword" name="form1" method="post">
    <table width="502" height="213" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#E8FFFF" class="tableBorder">
        <h3 style="color:red">${error}</h3>
        <tr>
            <td height="43" colspan="4" align="center" class="head">&nbsp;</td>
        </tr>
        <tr>
            <td width="33" rowspan="4" align="center" valign="middle" >&nbsp;</td>
            <td width="176" height="23">�û���:    </td>
            <td width="258"><input name="name" id="name" type="text" size="31"></td>
            <td width="35" rowspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td height="23">��ʾ������:</td>
            <td height="23"><input name="question" id="qe" type="text" size="31"></td>
            <td height="23"><input type="button" id="find" value="�鿴����"></td>
        </tr>

        <tr>
            <td height="53">��:</td>
            <td height="53"><input name="result" type="text" size="31"></td>
        </tr>
        <tr align="center">
            <td height="46" colspan="4">
                <input name="Submit" type="submit" value="����" onClick="return check()">
                &nbsp;
                <input name="Submit2" type="reset" value="����">
                &nbsp;&nbsp;<a href="/index">���ص���ҳ</a>
            </td>
        </tr>

    </table>  </form>
</body>
</html>
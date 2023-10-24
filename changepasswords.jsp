<%@  page import="java.sql.*" %>
<%!
String uname;
%>
<%
try
{
uname=(String)session.getAttribute("su1");
%>


<html>


<body style="margin: 10px 10px 10px 10px" bgcolor="#C7C4DF" onload="document.testform.password1.focus()"><center>
<B><FONT SIZE="5" COLOR="#993300">CHANGE PASSWORD</FONT></B>

<BR><BR>
	<table border="0">
        <tr>
            <td>
                <form name="testform" method="post" onSubmit="return validateStandard(this, 'error');" action="changepassword.jsp">
                <table border=1>
                    <tr>
                        <td class="mandatory">USER ID</td>
                        <td><b><%=uname%><input type="hidden" name="uname" value="<%=uname%>"</td>
                    </tr>
                    <tr>
                        <td class="mandatory">NEW Password</td>
                        <td><input type="password" name="passwd1" id="password1" required="1" minlength="3" maxlength="8" SIZE=15></td>
                    </tr>
                    <tr>
                        <td class="mandatory">CONFIRM Password</td>
                        <td><input type="password" name="passwd2" SIZE=15 id="password2" required="1" equals="password1" err="Password two must be the same as password 1"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="SUBMIT"></td>
                    </tr>
                </table>
                </form>

            </td>
        </tr>
    </table>
</body>
</html>
         
<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>
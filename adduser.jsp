<%@ page import ="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String q;
int ssno=1;
%>
<%
try{

Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

String q="select max(uname) from login";
rs=st.executeQuery(q);
if(rs.next())
{
ssno=rs.getInt(1);
ssno++;
}
}catch(Exception e)
{
out.println(e);
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY BGCOLOR="#99CCFF" onload="document.testform.passwd.focus()">

<FORM METHOD=POST ACTION="adduser1.jsp" name="testform">
<CENTER>
<B><FONT SIZE="5" COLOR="#660000">ADD USER DETAILS</FONT></B><BR><BR>

<TABLE border="1">
<TR>
	<TD><B>USER NAME</TD>
	<TD><INPUT TYPE="text" NAME="uname" value="<%=ssno%>" size=15 readonly></TD>
	<TD><B>PASSWORD</TD>
	<TD><INPUT TYPE="text" NAME="passwd" size=15 maxlength=8></TD>
</TR>
<TR>
	<TD><B>DESIGNATION</B></TD>
	<TD>&nbsp;&nbsp;<SELECT NAME="desig">
	<option>
	<OPTION>administrator</OPTION>
	<OPTION>bookissue</OPTION>
	<OPTION>bookreturn</OPTION>
	<OPTION>staff</OPTION>
	</SELECT></TD>
	<TD>&nbsp;</TD>
	<TD>&nbsp;</TD>
</TR>
<TR>
	<TD>&nbsp;</TD>
	<TD><CENTER><INPUT TYPE="submit" VALUE="SUBMIT"></CENTER></TD>
	<TD>&nbsp;</TD>
	<TD>&nbsp;</TD>
</TR>

</TABLE>
<BR><BR><INPUT TYPE="button" onClick="window.location='users.html'" value="BACK">


</FORM>
</BODY>
</HTML>

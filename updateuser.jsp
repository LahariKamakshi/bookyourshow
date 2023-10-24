<%@  page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String q,uname;

%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

uname=(String)session.getAttribute("su2");



q="select * from login where uname="+uname+"";

rs=st.executeQuery(q);

%>


<HTML>
<HEAD>
<TITLE> New Document </TITLE>
</HEAD>

<BODY BGCOLOR="#99CCFF">
<FORM METHOD=POST ACTION="updateuser1.jsp">
<%
while(rs.next())
{
%>

<CENTER>
<B><FONT SIZE="5" COLOR="">USER DETAILS</FONT></B><br><br>

<TABLE border="1">
<TR>
	<TD><B>USER ID</TD>
	<TD><b><%=uname%><input type="hidden" name="uname" value="<%=uname%>"></TD>
	<TD><B>PASSWORD</TD>
	<TD><INPUT TYPE="text" NAME="passwd" value="<%=rs.getObject(2)%>" size=15 maxlength=8></TD>
</TR>
<TR>
	<TD><B>DESIGNATION</TD>
	<TD><SELECT NAME="desig">
	<option><%=rs.getObject(3)%>
	<OPTION>administrator</OPTION>
	<OPTION>bookissue</OPTION>
	<OPTION>bookreturn</OPTION>
	</SELECT></TD>
	<TD>&nbsp;</TD>
	<TD>&nbsp;</TD>
</TR>
</TABLE><BR>


<input type="submit" value="UPDATE">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" onClick="window.location='users.html'" value="BACK">

<%
}
%>


</FORM>
</BODY>
</HTML>

<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>

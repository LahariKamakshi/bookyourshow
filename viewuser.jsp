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

uname=(String)request.getParameter("uname");

session.setAttribute("su2",uname);

q="select * from login where uname='"+uname+"'";

rs=st.executeQuery(q);

%>


<HTML>
<HEAD>
<TITLE> New Document </TITLE>
</HEAD>

<BODY BGCOLOR="#99CCFF">

<%
while(rs.next())
{
%>

<CENTER>
<B><FONT SIZE="5" COLOR="">USER DETAILS</FONT></B><br><br>

<TABLE border="1">
<TR>
	<TD><B>USER ID</TD>
	<TD><%=uname%></TD>
	<TD><B>PASSWORD</TD>
	<TD><%=rs.getObject(2)%></TD>
</TR>
<TR>
	<TD><B>DESIGNATION</TD>
	<TD><%=rs.getObject(3)%></TD>
	<TD><B>&nbsp;</TD>
	<TD>&nbsp;</TD>
</TR>
</TABLE><BR>

<INPUT TYPE="button" onClick="window.location='users.html'" value="BACK">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" onClick="window.location='updateuser.jsp'" value="UPDATE USER"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" onClick="window.location='deleteuser.jsp'" value="DELETE USER"> 


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

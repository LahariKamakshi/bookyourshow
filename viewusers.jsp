<%@  page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
%>
<%
try
{

Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();
rs=st.executeQuery("select uname from login order by uname");
%>


<HTML>
<HEAD>
<TITLE> New Document </TITLE>

</HEAD>

<BODY BGCOLOR="#99CCFF">

<FORM METHOD=POST ACTION="viewuser.jsp">
<CENTER>
<B><FONT SIZE="5" COLOR="">USER DETAILS</FONT></B><br><br>
<TABLE BORDER=1>
<tr>
	<TD><B>USER ID</TD>
	<td><SELECT NAME="uname">
	<option>select
	<%
		while(rs.next())
		{
			 String temp=rs.getString(1);
	%>
			 <option><%=temp%>

       <%
                }
       %> 
       </SELECT></td>
</TR>
<tr><td>&nbsp;</td><td><INPUT TYPE="submit" VALUE="SHOW"></td></tr>
</TABLE>
<BR><BR><INPUT TYPE="button" onClick="window.location='users.html'" value="BACK">

</CENTER>
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
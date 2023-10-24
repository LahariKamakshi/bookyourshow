<%@ page import="java.sql.*" %>
<%!
Connection con;
Statement st;
int i;
String uname,passwd,desig;
%>
<%
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

uname=(String)request.getParameter("uname");

passwd=(String)request.getParameter("passwd");
desig=(String)request.getParameter("desig");

String q="insert into login values('"+uname+"','"+passwd+"','"+desig+"')";
i=st.executeUpdate(q);
out.println("q");
if(i!=0)
{
response.sendRedirect("home.html");
}
else
{
response.sendRedirect("transfail.html");
}
}
catch(Exception e)
{
out.println(e.toString());
}
%>

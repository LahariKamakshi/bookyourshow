<%@page import="java.sql.*"%>
<%!
String q,passwd,desig;
Connection con;
Statement st;
int uname,i;
%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

uname=Integer.parseInt(request.getParameter("uname"));

passwd=(String)request.getParameter("passwd");
desig=(String)request.getParameter("desig");

q="update login set  passwd='"+passwd+"',desig='"+desig+"' where  uname="+uname+"";

i=st.executeUpdate(q);

if(i==0)
response.sendRedirect("transfail.html");
else
response.sendRedirect("home.html");
}
catch(Exception e)
{
out.println(e.toString());
}
%>

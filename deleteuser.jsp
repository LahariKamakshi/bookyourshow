<%@pageimport="java.sql.*"%>
<%!
Connection con;
Statement st;
int i;
String q,uname;
%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

uname=(String)session.getAttribute("su2");

q="delete from login where uname="+uname+"";

i=st.executeUpdate(q);

response.sendRedirect("home.html");


}
catch(Exception e)
{
out.println(e.toString());
}
%>
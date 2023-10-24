<%@ page import ="java.sql.*" %>

<%!
Connection con;
Statement st;
ResultSet rs;
String q;
int i;
%>

<%
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

q="commit";
i=st.executeUpdate(q);

if(i!=0)
{

response.sendRedirect("home.html");

}
else
response.sendRedirect("transfail.html");
}
catch(Exception e)
{
out.println(e.toString());
}
%>
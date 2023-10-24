<%@ page import="java.sql.*" %>
<%!
Connection con;
Statement st;
int i,uname;
String passwd1,passwd2;
%>
<%
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();

uname=Integer.parseInt(request.getParameter("uname"));

passwd1=(String)request.getParameter("passwd1");
passwd2=(String)request.getParameter("passwd2");


String q=" update login set passwd='"+passwd2+"' where uname="+uname+"";
i=st.executeUpdate(q);
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

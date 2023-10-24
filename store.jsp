<%@ page import ="java.sql.*"%>

<%
String uname=request.getParameter("uname");
String pwd2=request.getParameter("pwd");
try 
{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");
	PreparedStatement ps=conn.prepareStatement("insert into userlogin values(?,?)");
	ps.setString(1,uname);
	ps.setString(2,pwd2);
	ps.executeQuery();
}
catch(Exception e) 
{
  	out.println(e);
}
%>
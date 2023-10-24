<%@ page import ="java.sql.*" %>

<%!
Connection con;
Statement st;
ResultSet rs;
String q,passwd,desig,uname;

%>

<%
try{

Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cvs");

st=con.createStatement();


uname=(String)request.getParameter("uname");
passwd=(String)request.getParameter("passwd");
desig=(String)request.getParameter("desig");
q="select * from login where uname='"+uname+"' and passwd='"+passwd+"' and desig='"+desig+"' ";
rs=st.executeQuery(q);

if(rs.next())
{

session.setAttribute("su1",uname);

if(desig.equals("administrator"))
response.sendRedirect("admin.html");

if(desig.equals("bookissue"))
response.sendRedirect("bookissuehome.html");

if(desig.equals("bookreturn"))
response.sendRedirect("bookreturnhome.html");

if(desig.equals("staff"))
response.sendRedirect("staffhome.html");

if(desig.equals("student"))
response.sendRedirect("studenthome.html");
}
else
response.sendRedirect("loginfail.html");
}
catch(Exception e)
{
out.println(e.toString());
}
%>
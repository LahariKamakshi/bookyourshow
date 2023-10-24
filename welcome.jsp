<%@  page import="java.sql.*" %>
<%!
String uname;
%>
<%
try
{
uname=(String)session.getAttribute("su1");
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
<script language='javascript'> 
function document.onkeydown() 
{ 
if ( event.keyCode==116) 
{ 
event.keyCode = 0; 
event.cancelBubble = true; 
return false; 
} 
} 

<!-- http://www.spacegun.co.uk -->
	var message = "function disabled"; 
	function rtclickcheck(keyp){ if (navigator.appName == "Netscape" && keyp.which == 3){ 	alert(message); return false; } 
	if (navigator.appVersion.indexOf("MSIE") != -1 && event.button == 2) { 	alert(message); 	return false; } } 
	document.onmousedown = rtclickcheck;
</SCRIPT>
</HEAD>

<BODY BGCOLOR="#CCFFFF">

<center><B><FONT SIZE="6" COLOR="#663300"><IMG SRC="pic/welcome.gif" WIDTH="175" HEIGHT="50" BORDER=0 ALT=""> to&nbsp;&nbsp;
<%=uname%>
</FONT></B><br><br>
<IMG SRC="pic/WELCOME7.GIF" WIDTH="534" HEIGHT="168" BORDER=0 ALT="">



</BODY>
</HTML>
<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>
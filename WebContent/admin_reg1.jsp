<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>

<%
try
{
String a1 = request.getParameter("aun");
String b1 = request.getParameter("agen");
String c1 = request.getParameter("adob");
String d1 = request.getParameter("amob");
String e1 = request.getParameter("aeid");
String f1 = request.getParameter("aad");
String g1 = request.getParameter("auid");
String h1 = request.getParameter("apass");

Connection con = databasecon.getconnection();
Statement st1 = con.createStatement();
String sss1 = "insert into adminreji(name1,gen1,dob1,mobile1,email1,address1,uname1,pass1) values('"+a1+"','"+b1+"','"+c1+"','"+d1+"','"+e1+"','"+f1+"','"+g1+"','"+h1+"')";
int x1 = st1.executeUpdate(sss1);


if(x1!=0)
{



%>
<jsp:forward page="admin_home.jsp" />
<%
}

}

catch(Exception e1)
{
out.print(e1);

}

%>
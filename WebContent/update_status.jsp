<%@ page language="java" import="java.sql.*,databaseconnection.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>SPAM BLOCKERS FOR APPLICATIONS</title>
</head>

<body>

<%
try
{
String uname=null;
String l2 = (String) session.getAttribute("l1");
String stus = (String) session.getAttribute("str6");
System.out.println(l2);
System.out.println(stus);



Connection con = databasecon.getconnection();


Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from userregi where user_reg_id1='"+l2+"'");
while(rs.next())
{
	uname=rs.getString("name1");
}

String sts ="update userregi set status1='"+stus+"' where user_reg_id1='"+l2+"'"; 

int x = st.executeUpdate(sts);


if(x!=0)
{

}

PreparedStatement pst1=con.prepareStatement("insert into userpost values(?,?,?)");
pst1.setInt(1, 0);
pst1.setString(2, uname);
pst1.setString(3,stus);
int i=pst1.executeUpdate();
if(i>0){
response.sendRedirect("index.jsp");
}
}

catch(Exception e)
{
out.print(e);

}

%>

</body>
</html>

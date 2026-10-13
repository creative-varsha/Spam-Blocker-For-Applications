<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.security.SecureRandom"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SPAM BLOCKERS FOR APPLICATIONS</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>

<%

Connection con=null;
Connection con1=null;


PreparedStatement psmt1=null;


String x=(String)session.getAttribute("l1");
int a = (Integer) session.getAttribute("vio");
int b = (Integer) session.getAttribute("vul");
int c = (Integer) session.getAttribute("off");
int d = (Integer) session.getAttribute("hat");
int e = (Integer) session.getAttribute("sex");

int f = a+b+c+d+e;

try{
con=databasecon.getconnection();


psmt1=con.prepareStatement("insert into filteravg (vio1,vul1,off1,hate1,sex1,total1,date1,user_id1) values(?,?,?,?,?,?,?,?)");

psmt1.setInt(1,a);
psmt1.setInt(2,b);
psmt1.setInt(3,c);
psmt1.setInt(4,d);
psmt1.setInt(5,e);
psmt1.setInt(6,f);
psmt1.setString(7,strDateNew1);
psmt1.setString(8, x);



System.out.println(x);
psmt1.executeUpdate();
int count=0;
/*PreparedStatement pst=con.prepareStatement("select * from filter_avg where user_id='"+x+"'");
int j=pst.executeUpdate();*/
Statement st=con.createStatement();
String sql="select * from filteravg where user_id1='"+x+"'";
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
 
count++;
} 
System.out.println(count);
 if(count>=4&&count!=5)
 {
	 System.out.println(count);
	 
	 PreparedStatement pst1=con.prepareStatement("DELETE FROM userregis WHERE user_reg_id1='"+x+"'");
	 pst1.executeUpdate();
	 response.sendRedirect("index.jsp?msd=delete");
 }
 else{
 response.sendRedirect("user_home.jsp");
 }

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>

</body>
</html>
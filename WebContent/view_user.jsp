<%@ page import="java.util.*,java.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,
javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">

<link rel="stylesheet" type="text/css" href="util.css">
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="js/main.js"></script>

	<link rel="stylesheet" type="text/css" href="main.css">
	
<style type="text/css">
.b
{
border:#000000;
border-size:1px;
}

body, html {
  height: 100%;
  margin: 0;
}

.back {
  /* The image used */
  background-image: url("images/18.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>


</style>
</head>

<body>
<div class="back">
<div class="w3-container w3-lobster font-effect-brick-sign"> 
<h1 class="w3-xxlarge">SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>

<div id="container123">
<img src="images/9.png" style="height: 100px;width: 100px;position: relative;top:100px;left: 10px;"></img>    

		         <ul class="menu123">
 
    <li><a href="admin_home.jsp" class="active">HOME</a></li>
    
    <li><a href="view_user.jsp">View User</a></li>
    <li><a href="filter_text.jsp">Add Filter Word</a></li>
    <li><a href="viewfilterword.jsp">View Filter Word</a></li>
    <li><a href="viewposts.jsp">View posts</a></li>
    <li><a href="filter_perf.jsp">Filter Performance</a></li>
    <li><a href="admin_reg.jsp">Admin Signup</a></li>
    <li><a href="admin_log.jsp">LOG OUT</a></li>
   
                
                
                
</ul> 	
		
		<div class="back">
<div id="content123" style="
    position: relative;
    left: 200px;
    float: left;
    bottom: 230px;
">	
 <div class="limiter" style="
    width: 900px;
">
<div class="container-table100">

			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">NAME</th>
								<th class="column2">GENDER</th>
								<th class="column3">DOB</th>
								<th class="column4">MOBILe</th>
								<th class="column5">EMAIL</th>
								<th class="column6">ADDRESSS</th>
								<th class="column5">REGISTRATION ID</th>
							</tr>
	
						</thead>
						
						<tbody>
						
			 <%try{

Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

String va1=null,vb1=null,vc1=null,vd1=null,ve1=null,vf1=null,vg1=null,vh1=null;
con=databasecon.getconnection();
 st=con.createStatement();

 String sqll=("select * from userregi ");
 rs=st.executeQuery(sqll);
while(rs.next())
{

va1=rs.getString(2);
vb1=rs.getString(3);
vc1=rs.getString(4);
vd1=rs.getString(5);
ve1=rs.getString(6);
vf1=rs.getString(7);
vg1=rs.getString(12);

%>

						
								<tr>
									<td class="column1"><%=va1%> </td>
									<td class="column2"><%=vb1%> </td>
									<td class="column3"><%=vc1%> </td>
									<td class="column4"><%=vd1%> </td>
									<td class="column5"><%=ve1%> </td>
									<td class="column6"><%=vf1%> </td>
									<td class="column5"><%=vg1%> </td>

     
	  </tr>
			
		<%
}
}
catch(Exception e)
{
out.print(e);
}
%>	
								
						</tbody>
					</table>
				</div>
			</div>
		
	</div>
</div>

	
 
 
 
      	
			
            
            </div>
      </div>
   </div>
   </div>
</body>
</html>

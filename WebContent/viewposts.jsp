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

<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="util.css">
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="js/main.js"></script>

	<link rel="stylesheet" type="text/css" href="main.css">
	
<title>SPAM BLOCKERS FOR APPLICATIONS</title>

<style type="text/css">
.b
{
border:#000000;
border-size:1px;
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
<img src="images/13.png" style="height: 100px;width: 100px;position: relative;top:100px;left: 10px;"></img>    
		
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
		
<div id="content123" style="
    position: relative;
    left: 200px;
    float: left;
    bottom: 200px;
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
								<th class="column2">POST INFORMATION</th>
							
							</tr>
	
						</thead>
						
						<tbody>
						
			 <%

Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

String va2=null,vb2=null;

try
{
con=databasecon.getconnection();
 st=con.createStatement();

 String sqll=("select * from userpost ");
 rs=st.executeQuery(sqll);
while(rs.next())
{

va2=rs.getString(2);
vb2=rs.getString(3);




%>

						
								<tr>
									<td class="column1"><%=va2%> </td>
									<td class="column2"><%=vb2%> </td>
								

     
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
			
            
            <%@ include file="footer.jsp" %>
      </div>
   </div>
</body>
</html>

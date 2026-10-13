<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>SPAM BLOCKERS FOR APPLICATIONS</title>

</head>

<body>
<%
	
		
		String anm = (String) session.getAttribute("ab1");
		
		
		%>
<div id="container123">
		<%@ include file="header.jsp" %>  
        
        <!--<div id="menu">
        	<ul>
            	<li class="menuitem"><a href="index.jsp">Logout</a></li>
                <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>
            </ul>
        </div>-->
        
		<div id="content123">
        	<h2>&nbsp; </h2>
       	 <h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Welcome : <%=anm%> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;   &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="index.jsp">Logout</a></h3>
		  
		  <table width="800">
			<tr>
			<td>
			<fieldset>
			<table width="500" height="300">
			<tr>
			<td><img src="Graph/filter.jpg" alt="cover_main" width="400" height="300" /></td>
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300" border="0">
			<tr>
			<td background="images/welcom.jpg">
		      <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="view_user.jsp">View User</a></p><br />
			
	<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="filter_text.jsp">Add Filter Word</a></p><br />
			
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="filter_perf.jsp">Filter Performance</a></p><br />
					
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin_reg.jsp">Admin Signup</a></p>
			</td>
			</tr>
			
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			
        	
			
            
             <%@ include file="footer.jsp" %>
      </div>
   </div>
</body>
</html>

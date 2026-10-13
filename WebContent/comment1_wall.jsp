<%@ page import="java.util.*,java.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,
javax.servlet.*, javax.servlet.http.*" %>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>


<style>

body{

  background-image: url("images/u6.jpg");
    /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


</style>



<%
			String cimg = request.getQueryString();
  Connection con123 = null;
  PreparedStatement st123 = null;
  ResultSet rs123 = null;
  String  cma = null,cmc = null,cmd = null;
  Blob cmb = null;
  int cms=0;
  
  
  
  
	try
		{
		
        con123 = databasecon.getconnection();  
   
		st123 = con123.prepareStatement("select * from userregi where user_reg_id1='"+cimg+"'");
		rs123 = st123.executeQuery();
		while(rs123.next())
       	{
	   
	    
		   cms=rs123.getInt(1);
		   cma=rs123.getString(2);
		   session.setAttribute("cgnm",cma);
		   cmb=rs123.getBlob(10);
		   cmd=rs123.getString(12);
		   session.setAttribute("cgid",cmd);
		   cmc=rs123.getString(13);


         %>	
		  <%
     
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta http-equiv="Refresh" content="5; url=user_home.jsp" />-->
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">

function val4()
{
var a=document.f4.cmd.value;
if(a=="")
{
alert("Enter Your Comments ");
document.f4.cmd.focus();
return false;
}
}
</script>
</head>

<body>
<div class="w3-container w3-lobster font-effect-brick-sign"> 
<h1 class="w3-xxlarge">SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>
<div id="content123" style="
    left: 256px;
">
		
        <!--<div id="menu">
        	<ul>
            	<li class="menuitem"><a href="#">Home</a></li>
                <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>
            </ul>
        </div>-->
		<%
	
		Integer sn = (Integer) session.getAttribute("a1");
		String nme = (String) session.getAttribute("b1");
		String l2 = (String) session.getAttribute("l1");
		
		
		%>
        
		<div id="content123">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Mr/Miss <font color="#990066"> <%=cma%> </font>&nbsp;Welcome You to commet About HimSelf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; <a href="index.jsp">Logout</a></h3>
		  
		  <table width="2%" height="0%">
			<td width="100%" height="42%"><tr>
			<td>
			<fieldset>
			<table width="500" height="380" >
			<tr height="30%">
			
		 <td width="25%"><p align="left"><img height="100" width="100" src="image.jsp?<%=cms%>"></p></td>
		 <td width="75%"><p align="center"><font color="#000099" size="3"><b><%=cmc%></b></font> </p></td>
        
		
			</tr>
			<tr height="70%">
			<td width="100%" colspan="2" >
			 <p><font color="#FF0000" size="2"><b>Friends On Comments</b></font></p>
			<%
			
  Connection con1 = null;
  PreparedStatement st1 = null;
  ResultSet rs1 = null;
  String  gma = null,gmb = null,gmc = null,gmd = null,gme = null,gmf=null;
  
  
  
  
  
	try
		{
		
        con1 = databasecon.getconnection();  
   
		st1 = con1.prepareStatement("select * from chats where getter_id1='"+cimg+"'");
		rs1 = st1.executeQuery();
		while(rs1.next())
       	{
	   
	    
		   gma=rs1.getString(2);
		   gmb=rs1.getString(3);
		   gmc=rs1.getString(4);
		   gmd=rs1.getString(5);
		   gme=rs1.getString(6);
		   gmf=rs1.getString(7);


         %>	
		 <p align="center"><font color="#000099" size="3"><b><%=gma%></b></font> &nbsp;&nbsp;<%=gmf%> </p>
		  <%
     
	   }
	  
	 }
	   catch(Exception e21)
	   {
	     out.println(e21.getMessage());
	   }
	   
	    %>
				
			
			</td>
			
			
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			<td height="28%"></td>
			<td>
			<fieldset> 
			
			<table width="200" height="350" border="0">
			<tr height="30%">
			<td>
			<form name="f4" action="message_filt_rpy.jsp" method="post" onsubmit="return val4();">
	<p> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp;Your Comments</b></font></p><br />
	<p> &nbsp;&nbsp;&nbsp;&nbsp;<textarea name="status"></textarea></p><br />
	<p align="center">
&nbsp;&nbsp;&nbsp;&nbsp;

<tr>
<td>
<input type="submit" name="sub" value="Submit"/> </td><td><input type="reset" name="clr" value="Reset"/></td>
	</tr>
	        </form>			
			</td>
			</tr>
		
			
			
			
			</table>
			</fieldset>
			</td>
			</tr>
		  </table>
			
        	
			<br />
			<br />
            
           
            
      </div>
   </div>
</body>
</html>

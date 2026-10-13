
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page import="java.util.*,java.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,
javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
<!-- <meta http-equiv="Refresh" content="5; url=user_home.jsp" />-->
<link rel="stylesheet" type="text/css" href="style.css" />
<title>SPAM BLOCKERS FOR APPLICATIONS</title>
<script type="text/javascript">
function val2()
{
var a=document.f2.status.value;
if(a=="")
{
alert("Enter Your Status Here");
document.f2.status.focus();
return false;
}
}
</script>
<script type="text/javascript">
function val3()
{
var b=document.f3.imag.value;
if(b=="")
{
alert("Selece Your Profile Image");
document.f3.imag.focus();
return false;
}
}



</script>
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
</head>

<body>
<div class="w3-container w3-lobster font-effect-brick-sign"> 
<h1 class="w3-xxlarge">SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>
<div id="container123">
		<%
			String user_id=(String)session.getAttribute("l1");
		Integer sn = (Integer) session.getAttribute("a1");
		String name = (String) session.getAttribute("b1");
		String l2 = (String) session.getAttribute("l1");
		String m2 = (String) session.getAttribute("m1");
		
		
		%>  
        
		<div id="content123">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; WELCOME : <%=name%> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;   &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="index.jsp">Logout</a></h3>
		  
		  <table width="2%" height="0%">
			<td width="100%" height="42%"><tr>
			<td>
			<fieldset style="
    height: 600px;
">
			<table width="500" height="380" border="0">
			<tr height="30%">
			<%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  String  bm = null,cm = null,dm = null,em = null,fm=null;
  Blob gm=null;
  int am = 0;
  
  
  
	try
		{
		
        con = databasecon.getconnection();  
   
		st = con.prepareStatement("select * from userregi where sno1='"+sn+"'");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   am=rs.getInt(1);
		   bm=rs.getString(2);
		   cm=rs.getString(3);
		   dm=rs.getString(4);
		   em=rs.getString(5);
		   fm=rs.getString(6);
		   gm=rs.getBlob(10);


         %>	
		 <td width="25%">
		 <p align="left"><img height="100" width="100" src="image.jsp?<%=am%>"></p>	
		
		 </td>
		 <td width="75%"><p align="center"><font color="#000099" size="3"><b><%=m2%></b></font> </p></td>
         <%
     
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
		
			</tr>
			<tr height="70%">
			<td width="25%" >
			 <p><font color="#FF0000" size="2"><b>FRIENDS ONLINE</b></font></p>
			 &nbsp;&nbsp;
			
			<%
  Connection con2 = null;
  PreparedStatement st2 = null;
  ResultSet rs2 = null;
  String  cf = null,cf1 = null;
  
  
  
  
  
	try
		{
		
        con2 = databasecon.getconnection();  
   
		st2 = con.prepareStatement("select * from insertfriend where sender1='"+name+"'");
		rs2 = st2.executeQuery();
		while(rs2.next())
       	{
	   
	    
		  
		   cf=rs2.getString(4);
		    cf1=rs2.getString(5);
			//session.setAttribute("cf2",cf1);
		  
		   
            

         %>	
		
			
		    <p align="center"><font color="#000099" size="3"><%=cf%></font>&nbsp;&nbsp;<a href="comment1_wall.jsp?<%=cf1%>" target="_blank">Comment</a> </p>			
		  
			
         <%
     
	
	 
	   }
	  
	 }
	   catch(Exception e21)
	   {
	     out.println(e21.getMessage());
	   }
	   
	    %>
	
			
			</td>
			
			<td width="75%" >
		
			<p><font color="#9900CC" size="2"><b>Friends Comments</b></font></p>
			
			<%
			
  Connection con3 = null;
  PreparedStatement st3 = null;
  ResultSet rs3 = null;
  String  gma = null,gmb = null,gmc = null,gmd = null,gme = null,gmf=null;
  int gsn=0;
  
  
  
  
	try
		{
		
        con3 = databasecon.getconnection();  
   
		st3 = con3.prepareStatement("select * from chats where getter_id1='"+l2+"'");
		rs3 = st3.executeQuery();
		while(rs3.next())
       	{
	   
	       gsn=rs3.getInt(1);
		   gma=rs3.getString(2);
		   gmb=rs3.getString(3);
		   gmc=rs3.getString(4);
		   gmd=rs3.getString(5);
		   gme=rs3.getString(6);
		   gmf=rs3.getString(7);


         %>	
		 
		 <p align="center"><font color="#000099" size="3"><b><%=gma%></b></font> &nbsp;&nbsp;<%=gmf%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="comment1_wall.jsp?<%=gmb%>" target="_blank">Reply</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete.jsp?<%=gsn%>">Delete</a> </p>
		 <br />
		  <%
     
	   }
	  
	 }
	   catch(Exception e31)
	   {
	     out.println(e31.getMessage());
	   }
	   
	    %>
				
			
			
				
			
			</td>
		
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			<td height="28%"></td>
			<td>
			<fieldset style="
    width: 300px;
"> 
			<marquee>If You Are Going Change Your Status and Profile Image Means, You will be Advis to Login Again</marquee>
			<table width="270" height="350" border="0">
			<tr height="30%">
			<td>
			<form name="f2" action="message_filter.jsp" method="post" onsubmit="return val2();">
	<p> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp; Update Status</b></font></p>
	<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="status"/></p>
	
	<br />
	
	<p align="center">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Submit" /> &nbsp;&nbsp;<input type="reset" name="clr" value="Reset" /></p>
	</form>

	<form name="f3" action="update_profile_image.jsp" method="post" onsubmit="return val3();" enctype="multipart/form-data">
	<p> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>Change Profile Image</b></font></p>
	<p><input type="file" name="imag"/></p>
	
	<br />
	
	
<input type="submit" name="sub" value="Submit" /> <input type="reset" name="clr" value="Reset" /></p>
	<uu/form>
			
			</td>
			</tr>
		
			
			
			<tr height="25%">
		
		 <td width="10">
		 	
	<p><blink><font color="#FF3399" size="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;People You May To Know</b></font></blink></p>&nbsp;&nbsp;
			<%
  Connection con1 = null;
  PreparedStatement st1 = null;
  ResultSet rs1 = null;
  String  cm1 = null;
  
  
  
  
  
	try
		{
		
        con1 = databasecon.getconnection();  
   
		st1 = con.prepareStatement("select * from userregi");
		rs1 = st1.executeQuery();
		while(rs1.next())
       	{
	   
	    
		  
		   cm1=rs1.getString(2);
		  if(!(cm1.equals(name)))
		   {
		   
            

         %>	
		
		 		 
		    <p><font color="#000099" size="3"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=cm1%></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="add_frnd.jsp?<%=cm1%>">Add Friend</a> </p>			
		  
			
         <%
     
	 }
	 
	   }
	  
	 }
	   catch(Exception e21)
	   {
	     out.println(e21.getMessage());
	   }
	   
	    %>
	
	</div>
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

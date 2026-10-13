<%@ page import="java.util.*,java.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>SPAM BLOCKERS FOR APPLICATIONS</title>

<style>
body{

  background-image: url("images/back2.jpg");
    /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


</style>
<script type="text/javascript">

function valid()
{
var aa=document.s.un.value;
if(aa=="")
{
alert("Enter Name");
document.s.un.focus();
return false;
}
if((document.s.gen[0].checked==false)&&(document.s.gen[1].checked==false))
{
alert("Select Gender");
document.s.un.focus();
return false;
}

var db=document.s.dob.value;
if(db=="")
{
alert("Enter The Date Of Birth");
document.s.dob.focus();
return false;
}

var k = document.s.mob.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mob.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mob.focus();
return false;
}
if(k.charAt(0)>=9)
{
alert("Enter the correct mobile no");
document.s.mob.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mob.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eid.focus();
return false;
}

var ad = document.s.ad.value;
if(ad=="")
{
alert("Enter Address");
document.s.ad.focus();
return false;
}

var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
document.s.uid.focus();
return false;
}
var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}


}

</script>




</head>

<body>
<div class="w3-container w3-lobster font-effect-brick-sign"> 
<h1 class="w3-xxlarge">SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>


<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 
	 
	 
	 String alpha="MOBVCXZPNWIEURYTKSLAHFJDGQ";
	int chara=(int)(Math.random()*26);
	String s=alpha.substring(chara, chara+4);
	//System.out.println(s);
	
	int y=100+(int)(Math.random()*1000);

	String z=s+y;
	session.setAttribute("z1",z);
	 
	 %>

<img src="images/7.jpg" style="height: 100px;width: 100px;position: relative;top: 220px;right: 470px;"></img>
       <div class="menubar123" style= "top:0px;">
       
<ul class="menu1 cf1" style="
    margin-bottom: 0px;
    margin-left: 200px;
">
<li><a href="index.jsp">HOME</a></li>
  <li><a href="registration_user.jsp">NEW-USER</a></li>
  <li><a href="admin_log.jsp">ADMIN SIN-IN</a></li>
  <li>
    </ul>
</div>
       
<br></br><br/>
<div id="containers123"style="
    width: 550px;
">
		
        
<div id="containers123" style="
    width: 550px;
    position: relative;
    left: 300px;
">     	
		  <table width="800">
			<tr>
			<td>
<fieldset style="
    width: 500px;
">
			<table width="500" height="300">
			<tr>
			<td>
			
			<form name="s" action="register1_user.jsp" method="post" onsubmit="return valid()" enctype="multipart/form-data">
            <table align="center" cellpadding="5" cellspacing="5" width="420" border="0">
              <tr> 
			  <tr>
            <td colspan="2" align="center"><strong><font color="#FF3300" size="+1" face="Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Newuser Registration</font></strong></td>
        
          </tr>
        
                <td colspan="2" align="center">&nbsp;</td>
              </tr>
            
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uname" class="b" placholder="enter name" pattern="[A-Za-z]{1,20}" title="enter only charecter"></td>
              </tr>
			
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Gender</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="gender" value="male" class="b">Male&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="radio" name="gender" value="female" class="b">Female</td>
              </tr>
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>DOB</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="date" name="dateofbirth" class="b"></td>
              </tr>
              
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Mobile</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mnumber" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Email ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="emailid" class="b"></td>
              </tr>
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Address</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="address"></textarea></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>User ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="userid" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="passw"></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Profile Image</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="file" name="img" class="b" required="required"></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Date</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="dat" class="b" value="<%=strDateNew1%>"></td>
              </tr>
              
              <tr> 
              
                <td><input type="submit" name="s" value="submit" class="b1" /> </td>
                            <td><input type="reset" name="r" value="clear" class="b1" /></td></tr>
              
            </table>
          </form>
			
		</td>
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300" border="0">
			<tr>
			<td><font size="2"><b> 
                  <%
                   String message=request.getParameter("message");
                   if(message!=null && message.equalsIgnoreCase("success"))
                    {
                    out.println("<font color='red'><blink>Registered Successfully !</blink></font>");
					
                    }
                  %>
                  </b></font></td>
				  </tr>
			<tr>
			<td align="justify"><p align="center"><img src="images/regis.png"  style="height: 300px;width: 300px;"/>
			</td>
			</tr>
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			
        	<br />
			<br />
            
              <%@ include file="footer.jsp" %>
      </div>
   </div>
</body>
</html>

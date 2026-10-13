
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>SPAM BLOCKERS FOR APPLICATIONS</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">

<script type="text/javascript">

function valid123()
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
if(k.charAt(0)!=9)
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

<style type="text/css">

.back {
  /* The image used */
  background-image: url("images/18.jpg");

  /* Full height */
  height: 1300px; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>


</head>

<body>

<div class="back"><div class="w3-container w3-lobster font-effect-brick-sign" style="
    padding-top: 25px;
"> 
<h1 class="w3-xxlarge" >SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>
<img src="images/7.jpg" style="height: 100px;width: 100px;position: relative; top: 100px;right: 590px;"></img>
			

<div id="container123">


		  
		         <ul class="menu123" style="top:0px;">
 
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
    
    bottom: 250px;
">   
	  
		  <table width="800" style="
    position: relative;
    bottom: 200px;
">
			<tr>
			<td>
			<fieldset>
			<table width="500" height="300">
			<tr>
			<td>

			<form name="s" action="admin_reg1.jsp" method="post" onsubmit="return valid123()">
            <table align="center" cellpadding="5" cellspacing="5" width="420" border="0">
               
			  <tr>
            <td colspan="2" align="center"><strong><font color="#FF3300" size="+1" face="Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Registration</font></strong></td>
          </tr>
          <tr>
                <td colspan="2" align="center">&nbsp;</td>
              </tr>
            
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="aun" class="b"/></td>
              </tr>
			
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Gender</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="agen" value="male" class="b" />Male&nbsp;&nbsp;&nbsp;&nbsp;
				 <input type="radio" name="agen" value="female" class="b"/>Female</td>
              </tr>
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>DOB</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="date" name="adob" class="b"/></td>
              </tr>
              
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Mobile</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="amob" class="b"/></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Email ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="aeid" class="b"/></td>
              </tr>
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Address</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="aad" style="
    width: 300px;
"></textarea></td>
              </tr>
			  
			  <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>User ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="auid" class="b" /></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1" color="#000000"><strong>Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="apass"/></td>
              </tr>
			  
			 
			  
			  
              
              <tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" /> 
                   
                  <input type="reset" name="r" value="clear" class="b1" /></td>
              </tr>
            </table>
          </form>
			
			</td>
			</tr>
			</table>
			</fieldset>
			
			</td>
			<td>
			 
			<table width="200" height="300" border="0">
			<tr>
			<td><font size="2"><b> 
                  <%
                   String amessage=request.getParameter("message");
                   if(amessage!=null && amessage.equalsIgnoreCase("success"))
                    {
                    out.println("<font color='red'><blink>REGISTERED</blink></font>");
					
                    }
                  %>
                  </b></font></td>
				  </tr>
			<tr>
			</tr>
			</table>
			
			</td>
			</tr>
			</table>
			
        	<br />
			<br />
            </div>
           
      </div>
   </div>
</body>
</html>

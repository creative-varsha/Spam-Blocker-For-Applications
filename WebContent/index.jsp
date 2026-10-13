
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>SPAM BLOCKERS FOR APPLICATIONS</title>
<style >

body, html {
  height: 100%;
  margin: 0;
}

.back {
position: relative;

left:200px;
width: 1000px;
min-height: 100px;
}

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
function vale()
{
var a=document.f1.uname.value;
if(a=="")
{
alert("Enter Your Username Here");
document.f1.uname.focus();
return false;
}

var b=document.f1.passw.value;
if(b=="")
{
alert("Enter Your Password Here");
document.f1.passw.focus();
return false;
}
}
</script>

</head>

<body>
<div class="w3-container w3-lobster font-effect-brick-sign"> 
<h1 class="w3-xxlarge">SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>

         <div class="menubar123">
<ul class="menu1 cf1" style="
    margin-bottom: 0px;
    margin-left: 200px;
">
<li><a href="index.jsp">HOME</a></li>
  <li><a href="registration_user.jsp">NEW-USER</a></li>
  <li><a href="admin_log.jsp">ADMIN SIN-IN</a></li>
  
    </ul>
</div>
<div class="back">        
	<div class="container456" style="
    position: relative;
    top: 0px;
    left:256px;
">
		  <table width="800">
			<tr>
			<td>
			<fieldset style="position:relative;
    top: 100px;width:60px;
">
			<table width="500" height="300">
			<tr>
			<td><img src="images/cover_image.jpg" alt="cover_main" width="400" height="300" /></td>
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset style="
    width: 0px;
    position: relative;
    top: 100px;
"> 
		
			<table width="200" height="300">
			<tr>
			<td >
			
			<form name="f1" action="user_login.jsp" method="post" onsubmit="return vale();">
			<img src="images/userlogin.png" style="width: 100px;height: 100px;padding-left: 50px; "></img>
	<p align="center"> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp;&nbsp;&nbsp;</b></font></p>
	<p align="center"> <img src="images/login.png" alt="uname" />&nbsp; <input type="text" name="unam" required="required"  placeholder="enter only charectors"/></b></font></p>
	<p align="center"> <img src="images/pass.jpg" alt="pass" />&nbsp;<input type="password" name="pasw" required="required"/></b></font></p>
	<br />
<tr>	
	<td>
<input type="submit" name="sub" value="Submit" /></td><td> <input type="reset" name="clr" value="Reset" /></td></tr>
	</form>
	<br /><br />
			</td>
			</tr>
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			<fieldset style="
    position: relative;
    top: 20px;
    float:left;
    left:150px;
    width: 200px;
    height:70px;
"> 
	 
			<table width="200" height="50" border="0">
			
			<tr>
			<td><font size="2"><b> 
			<%
			
			String messag=request.getParameter("message");
            if(messag!=null && messag.equalsIgnoreCase("fail"))
             {
             out.println("<font color='red'><blink>Invalid username & Pass!</blink></font>");
				
             }
			%>
			 </b></font><h4>WRONG PASSWORD</h4> </td>
				  </tr>
			
			</table>
			</fieldset>
        	<%
			
			String mess=request.getParameter("msd");
            if(mess!=null && mess.equalsIgnoreCase("delete"))
             {
             out.println("<font color='red'><blink>Your Account is Deleted ...!</blink></font>");
				
             }
			%>
</div>			
            </div>
</body>
</html>

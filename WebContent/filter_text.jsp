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

<title>SPAM BLOCKERS FOR APPLICATIONS</title>
<script type="text/javascript">
function val5()
{
if(document.f1.wctry.selectedIndex==0)
{
alert("Select The Type");
return false;
}
var a = document.f1.wrd.value;
if(a=="")
{
alert("Enter Filter Word");
document.f1.wrd.focus();
return false;
}
}
</script>
<style>


.back {
  /* The image used */
  background-image: url("images/18.jpg");

  /* Full height */
  height: 1000px; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.container100{
border-radius: 40px 0px 40px 0px;
  background: #c850c0;
  background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);
  background: -o-linear-gradient(45deg, #4158d0, #c850c0);
  background: -moz-linear-gradient(45deg, #4158d0, #c850c0);
  background: linear-gradient(45deg, #4158d0, #c850c0);


}


</style>


</head>

<body>

<div class="back">

<div class="w3-container w3-lobster font-effect-brick-sign"> 
<h1 class="w3-xxlarge">SPAM BLOCKERS FOR APPLICATIONS</h1>
 </div>

<%
	
		
		String anm = (String) session.getAttribute("ab1");
		
		
		%>
<div id="container123">
<img src="images/11.png" style="height: 100px;width: 100px;position: relative;top:100px;left: 10px;"></img>    
	
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
		  <table width="800">
			<tr>
			<td>
			
	<fieldset style="
    padding-left: 0px;
    padding-right: 0px;
    padding-bottom: 0px;
    padding-top: 0px;
    border-right-width: 0px;
    border-left-width: 0px;
    border-top-width: 0px;
    border-bottom-width: 00px;
">
	
			<div class="container100">
			
			<table width="500" height="300">
			<tr>
			<td>
			
			<form action="filter_text1.jsp" name="f1" method="post" onsubmit="return val5();">
			
  <table align="center" width="500" height="200" border="0">
          
   <tr>
  <td class="new1"><strong><font size="4">Word Category : </font></strong></td>
  <td><select name="wctry" style="
    width: 354px;
    height: 44px;
">
  <option selected value>--Category--</option>
  <option>Violence</option>
  <option>Vulgar</option>
  <option>Offensive</option>
  <option>Hate</option>
  <option>Sex</option>
  </select></td>
  </tr>
  <tr> 
  <td class="new1"><strong><font size="4">Word:</font></strong></td>
  <td class="field"><input type="text" name="wrd" /></td>
  </tr>
   <tr>
  <td></td>
	  <td><input type="submit" name="sub" value="ADD" class="button"/> &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="Clear" class="button"/></td></tr>
  </table>

  </form>

			</td>		</tr>
			</table>
			</div>
			</fieldset>
			<td>&nbsp;</td>
	
			<td>
		
			</td>
			</tr>
			</table>
  </div>			
        	
			
            
                </div>
   </div>
</body>
</html>

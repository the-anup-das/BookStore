<%-- 
    Document   : login
    Created on : Sep 1, 2017, 11:38:49 PM
    Author     : Debasmita
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Book Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_r.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
    function clickEvent()
{
    
    //window.location.href='index.jsp';
    window.location = 'registration.jsp';
    //window.location.replace("index.jsp");
   // window.open("index.jsp","_self")
}
  
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
</head>
<style type="text/css">
    body {
background-color: #F3F3F3;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
	margin-bottom: 10px;
	color: #E90206;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 313px;
        height: 383px;
    }
form fieldset input[type="text"], input[type="password"] {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #e5e5e5;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        color: #5a5656;
        font-family: "Bookman Old Style";
        font-size: medium;
        outline: none;
        width: 280px;
        padding: 6px 10px;
        -webkit-appearance:none;
        margin-top: 5px;
    }
form fieldset input[type="submit"] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #008dde;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        color: #f4f4f4;
        cursor: pointer;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        height: 45px;
        text-transform: uppercase;
        width: 300px;
        -webkit-appearance:none;
        margin-right: 0px;
        margin-top: 15px;
    }
	form fieldset input[type="button"] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #008dde;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        color: #f4f4f4;
        cursor: pointer;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        height: 45px;
        text-transform: uppercase;
        width: 300px;
        -webkit-appearance:none;
        margin-right: 0px;
        margin-top: 15px;
    }
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}

    .auto-style1 {
        color: #0099FF;
        text-align: center;
        font-family: Verdana;
        height: 36px;
    }
    .auto-style2 {
        font-size: large;
    }    
.clear
{
width: 200px;
padding-left: 10px;
font-weight: bold;
}
.clear:hover
{
color: white;
background-color: #FF4545;
}

.signup
{  
width: 200px;
padding-left: 10px;
font-weight: bold;
}
.signup:default
{
color: white;
background-color: limegreen;   
}
.signup:hover
{
color: white;
background-color: #0AA4FC;
}
    .auto-style3 {
        color: #00CC00;
        text-align: left;
        font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        height: 36px;
        text-decoration: underline;
    }
    
.form{
	background: #F3F3F3; width:1920px; margin:0 auto; padding-left:11.5%; padding-top:40px;
}

.form input[type="text"] { width: 190px}
.form input[type="username"] { width: 190px}
</style>
<body>
    <div class="header-top">
        <div class="wrap">
            <div class="logo">
                <a href="index.jsp"><img src="images/templatemo_header.jpg" alt="" width="901" height="49" /></a>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="header-bottom">
        <div class="wrap">
            <!-- start header menu -->
            <ul class="megamenu skyblue">
                <li><a class="color10" href="index.jsp">Home</a></li>
                <li class="grid">
                    <a class="color7" href="login.jsp">Account</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <h4>Account</h4>
                                    <ul>
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="registration.jsp">Create New Account</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <img src="images/nav_img5.png" alt="" />

                            <img src="" alt="" />
                        </div>
                    </div>
                </li>
                
                
                 <li class="grid">
                    <a class="color5" href="About.jsp">About</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <h4>About Us</h4>
                                    <ul>
                                        <li><a href="#">Contact</a></li>
                                        <li><a href="Feedback.jsp">Feedback</a></li>
                                        <li><a href="About.jsp">About</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <img src="images/nav_img1.png" alt="" />
                            
                            <img src="" alt="" />
                        </div>
                    </div>
                </li>
        
        </div>
  </div>
        <div class="clear"></div>
    </div>
    
    
<div class="single">
        <div class="wrap">
                             
            <div class="clear"></div>
                <div>
                    <img alt="logo" src="images/LogoShortSmall.png"/>
                </div>
        <div class="clear"></div>
        </div>
</div>

<div>
    <form id="form1" action="login">
    <div id="login">
<fieldset style="height: auto">
    
                 <h1>
                     <c:if test="${not empty endSessionMessage}">
            		 <c:out value="${endSessionMessage}"/>
        	    </c:if>
        
        	</h1>
    
    <h1 style=" color: #2162A3; font-family: sans-serif">
        Username<input type="text" id="Username" name="Username" size="25px" class="text" style=" color: #2162A3; font-family: sans-serif"/>
    </h1>

     <p style=" color: #2162A3; font-family: sans-serif">
        Password<input type="password" id="Password" name="Password" size="25px"style=" color: #2162A3"/>
     </p>
     
     		<h1>
                <c:if test="${not empty errorMessage}">
            		 <c:out value="${errorMessage}"/>
        	    </c:if>
        
        	</h1>
      <c:if test="${not empty userName}">	    
          <p><input type="submit" value="Login" id="Login" class="login" disabled="true" ></p> 
          
          <p> <span class="btn-round">or</span> </p>
        <p>
	
    	<input type="button" value="NEW USER SIGN UP" id="SignUp" class="signup" onclick="clickEvent()" disabled="true" />
	
        </p>
    </c:if>
        <c:if test="${empty userName}">	    
          
            <p><input type="submit" value="Login" id="Login" class="login"  ></p> 
          
          <p> <span class="btn-round">or</span> </p>
        <p>
	
    	<input type="button" value="NEW USER SIGN UP" id="SignUp" class="signup" onclick="clickEvent()" />
	
        </p>
    </c:if>


    
</fieldset>


</div> <!-- end login -->
</form>
  
</div>
    

                <div class="copy">
                    <div class="wrap">
                        <p>© All rights reserved | Book Store</p>
                    </div>
                </div>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {

                    var defaults = {
                        containerID: 'toTop', // fading element id
                        containerHoverID: 'toTopHover', // fading element hover id
                        scrollSpeed: 1200,
                        easingType: 'linear'
                    };


                    $().UItoTop({ easingType: 'easeOutQuart' });

                });
            </script>

            <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>

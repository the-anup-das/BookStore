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
    
    function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
    };
    
    var check = function() {
  if (document.getElementById('password').value == document.getElementById('repassword').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }
};

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
        <div class="clear"></div>
    </div>

<div  class="form">
<fieldset style="height: auto">    
    <!-- createServerlet is class of com.Bookstore.db package  -->
    <form id="contactform" action="CreateServerlet">
        
                <p class="contact"><label for="name">Name</label></p> 
                <input id="fname" name="fname" placeholder="First name" required="" tabindex="0" type="text" maxlength="20">
                    <input id="lname" name="lname" placeholder="Last name" required="" tabindex="1" type="text" maxlength="20">
                    
                <p class="contact"><label for="email">Email</label></p> 
                    <input id="email" name="email" placeholder="example@domain.com" required="" type="email" maxlength="25"> 
                
                <p class="contact"><label for="username">Create Username</label></p> 
    			<input id="username" name="username" placeholder="username" required="" tabindex="2" type="text" maxlength="25"> 
    			 
                <p class="contact"><label for="password">Create Password</label></p> 
    			<input type="password" id="password" name="password" required="" maxlength="20" onkeyup='check();'> 
                <p class="contact"><label for="repassword">Re-type Password <span id='message'></span></label></p> 
    			<input type="password" id="repassword" name="repassword" required="" maxlength="20" onkeyup='check();'>
                        
        
               <fieldset>
                 <label>Birthday &nbsp; </label>
                  <label class="month"> 
                  <select class="select-style" name="BirthMonth">
                  <option value="">Month</option>
                  <option value="01">January</option>
                  <option value="02">February</option>
                  <option value="03" >March</option>
                  <option value="04">April</option>
                  <option value="05">May</option>
                  <option value="06">June</option>
                  <option value="07">July</option>
                  <option value="08">August</option>
                  <option value="09">September</option>
                  <option value="10">October</option>
                  <option value="11">November</option>
                  <option value="12" >December</option>
                  </label>
                 </select>    
                <label> &nbsp; Day &nbsp; <input class="birthday" maxlength="2" name="BirthDay"  placeholder="Day" required="" maxlength="2" onkeypress="return isNumber(event)"/></label>
                <label> &nbsp; Year &nbsp; <input class="birthyear" maxlength="4" name="BirthYear" placeholder="Year" required="" style="width: 95px" maxlength="4" onkeypress="return isNumber(event)"/></label>
              </fieldset>
                        
            <label>Gender &nbsp; </label>            
            <select class=" select-style gender" name="gender" style="width: 200px; padding-top: 5px; padding-bottom: 5px; font-size: small">
            <option value="m">Male</option>
            <option value="f">Female</option>
            </select><br><br>
            
            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" placeholder="phone number" required="" type="text" maxlength="10" style=" width: 200px" onkeypress="return isNumber(event)" /> <br><br>
            <p>
                <input type="submit" value="Sign me up!" id="SignUp" class="signup">&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Clear Form" id="clear" class="clear">
            </p>         
            <p> </p> 
            <p> </p> 
   </form>
</fieldset>
</div>   
                       
<div class="clear"></div>
                       
            <div class="footer">
                <div class="footer-top">
                    <div class="wrap">
                        <div class="col_1_of_footer-top span_1_of_footer-top">
                            <ul class="f_list">
                                <li><img src="images/f_icon.png" alt="" /><span class="delivery">Free delivery on all orders*</span></li>
                            </ul>
                        </div>
                        <div class="col_1_of_footer-top span_1_of_footer-top">
                            <ul class="f_list">
                                <li><img src="images/f_icon2.png" alt="" /><span class="delivery">Fast delivery (with in 2 official days)</span></li>
                            </ul>
                        </div>
                        <div class="col_1_of_footer-top span_1_of_footer-top">
                            <ul class="f_list">
                                <li></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>

                
                <div class="footer-bottom">
                    <div class="wrap">
                        <div class="section group">
                            
                            <div class="col_1_of_5 span_1_of_5">
                                <h3 class="m_9">Things we do</h3>
                                <ul class="list1">
                                    <li>Sell Books</li>
                            </div>
                            <div class="col_1_of_5 span_1_of_5">
                                <h3 class="m_9">Express Yourself</h3>
                                <ul class="list1">
                                    <li><a href="Feedback.jsp">Contact Us</a></li>
                                    <li><a href="Feedback.jsp">Feedback</a></li>
                                </ul>
                            </div>
                            <div class="col_1_of_5 span_1_of_5">
                                <ul class="list1">
                                    <h3 class="m_9">Know who we are</h3>
                                    <li><a href="About.jsp">About Us</a></li>

                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
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

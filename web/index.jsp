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
.dropbtn {
	color: white;
	border: none;
	cursor: pointer;
}

.dropdownb {
    position: relative;
    display: inline-block;
}

.dropdownb-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
}

.dropdownb-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdownb-content a:hover {background-color: #f1f1f1}

.dropdownb:hover .dropdownb-content {
    display: block;
}

.dropdownb:hover .dropbtn {
    background-color: #3e8e41;
}

    body {
background-color: #F3F3F3;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
a.viewcart:hover{
	background-color: #FBAF0D;
	background-origin: border-box;
	padding-right: 4px;
	padding-left: 4px;
	padding-bottom: 2px;
	margin-top: 4px;
}
 
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

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
                <a href="CartDetails" style="float: right; color: #F7F2F2;padding-right: 4px;
	padding-left: 4px;
	padding-bottom: 2px;margin-top:4px;" class="viewcart"> View Cart</a> 
    
            <div class="dropdownb" style="float: right; margin-top: 5px;">
           <a  class="dropbtn" style="color: #49E5B2; padding-right: 4px; padding-left: 4px; padding-bottom: 2px;"> 
                            <c:if test="${not empty userName}">
                                 <c:out value="Hi! ${userName} "/>
                            </c:if>
                        </a>
          <div class="dropdownb-content">
            <a href="signout">Log Out</a>
          </div>
        </div>
    
        </ul>  
        
        </div>
        <div class="clear"></div>
    </div>
   <div class="index-banner">
        <div class="wmuSlider example1" style="height: auto; width: available">
            <div class="wmuSliderWrapper">
                <article style="position: relative; width: 100%; opacity: 1;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/Banner/banner1.jpg" alt="" />
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>

                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/Banner/banner2.jpg" alt="" />
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>

                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/Banner/banner3.jpg" alt="" />
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>

                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/Banner/banner4.jpg" alt="" />
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>

                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/Banner/banner5.jpg" alt="" />
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>
                
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/Banner/banner6.jpg" alt="" />
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>

            </div>
            <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
            <ul class="wmuSliderPagination">
                <li><a href="#" class="">0</a></li>
                <li><a href="#" class="">1</a></li>
                <li><a href="#" class="wmuActive">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
            </ul>
            <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next
            </a><ul class="wmuSliderPagination">
            		<li><a href="#" class="wmuActive">0</a></li>
                    <li><a href="#" class="">1</a></li>
                    <li><a href="#" class="">2</a></li>
                    <li><a href="#" class="">3</a></li>
                    <li><a href="#" class="">4</a></li>
                </ul>
        </div>
        <script src="js/jquery.wmuSlider.js"></script>
        <script type="text/javascript" src="js/modernizr.custom.min.js"></script>
        <script>
            $('.example1').wmuSlider();
        </script>
    </div>

    <div class="header-bottom">
        <div class="wrap">
            <ul class="megamenu skyblue"></ul>
         </div>
     </div>

<form name="chooseBook" method="POST" action="showBookDetails">
            <div class="main">
                <div class="wrap">
				  <div class="content-bottom">
				   <div class="box1">
				    
                   <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Head First Java</h3>
                                                <p class="m_2">by Bert Bates and Kathy Sierra</p>
                                                <br>
				         <div class="grid_img">
						   <div class="css3"><img src="images/HeadFirstJavaBook.jpg" alt="" style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px"/></div>
	                    </div>
                       <div class="price">₹500</div>
					   </div>
					    </div>

						 <ul class="list">
						  <li>
                                                      <input type="submit" name="HeadFirstJavaBook" value="Order Now" style="background-color: transparent; color: white; font-size: large; border: 0pt transparent " >
                                                  </li>
					     </ul>
			    	    <div class="clear"></div>
			    	  
                    </div>


				    <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Life is what you make it</h3>
					  	<p class="m_2">by Preeti Shenoy</p><br>
					    <div class="grid_img">
						   <div class="css3"><img src="images/lifeiswhatyoumakeit.jpg" alt=""  style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px"/></div>
	                    </div>
                       <div class="price">₹500</div>
					   </div>
					    </div>

						 <ul class="list">
						  <li>
                                                    <input type="submit" name="lifeiswhatyoumakeit" value="Order Now" style="background-color: transparent; color: white; font-size: large; border: 0pt transparent " >
						  </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				    <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">The Complete reference java 2</h3>
					  	<p class="m_2">by Herbert Schildt</p><br>
				         <div class="grid_img">
						   <div class="css3"><img src="images/Java2TheCompleteReference.jpg" alt="" style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px"/></div>
					          
	                    </div>
                       <div class="price">₹500</div>
					   </div>
					    </div>
					  
						 <ul class="list">
						  <li>
                                                      <input type="submit" name="Java2TheCompleteReference" value="Order Now" style="background-color: transparent; color: white; font-size: large; border: 0pt transparent " >
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				  <div class="clear"></div>
			  </div>
			  <div class="box1">
				  <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Thinking in JAVA</h3>
					  	<p class="m_2">by Bruce Eckel</p><br>
				         <div class="grid_img">
						   <div class="css3"><img src="images/thinkingofjava.jpg" alt="" style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px"/></div>
					          
	                    </div>
                       <div class="price">₹500</div>
					   </div>
					    </div>
					    <ul class="list">
						  <li>
							  <input type="submit" name="thinkingofjava" value="Order Now" style="background-color: transparent; color: white; font-size: large; border: 0pt transparent " >
                                                  </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				    <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">core JAVA</h3>
					  	<p class="m_2">by Cay S. Horstmann </p><br>
				         <div class="grid_img">
						   <div class="css3"><img src="images/corejava.jpg" alt="" style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px"/></div>
					       
	                    </div>
                       <div class="price">₹500</div>
					   </div>
					    </div>
					   
						 <ul class="list">
						  <li>
							  <input type="submit" name="submit" value="Order Now" style="background-color: transparent; color: white; font-size: large; border: 0pt transparent " >
                                                  </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				   <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">The Book THIEF</h3>
					  	<p class="m_2">by Markus Zusak</p><br>
				         <div class="grid_img">
						   <div class="css3"><img src="images/thebookthief.jpg" alt="" style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px"/></div>
					          
	                    </div>
                       <div class="price">₹500</div>
					   </div>
					    </div>
					   
						 <ul class="list">
						  <li>
							 <input type="submit" name="submit" value="Order Now" style="background-color: transparent; color: white; font-size: large; border: 0pt transparent " >
                                                  </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
				  <div class="clear"></div>
			    </div>
			  </div>
			 </div>
        </div>
</form>    
                       
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

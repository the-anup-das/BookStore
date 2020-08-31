<%-- 
    Document   : BookInfo
    Created on : Sep 19, 2017, 1:24:16 PM
    Author     : hp
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

<!-- add cart button css-->
<style type="text/css">
a.viewcart:hover{
	background-color: #FBAF0D;
	background-origin: border-box;
	padding-right: 4px;
	padding-left: 4px;
	padding-bottom: 2px;
	margin-top: 4px;
}
.order
{  
width: 200px;
height: 35px;
padding-left: 10px;
font-weight: bold;
}
.order:default
{
color: white;
background-color: limegreen;   
}
.order:hover
{
color: white;
background-color: #0AA4FC;
}
</style>
<body>
    <div class="header-top">
        <div class="wrap">
            <div class="logo">
                <a href="Home.jsp"><img src="images/templatemo_header.jpg" alt="" width="901" height="49" /></a>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="header-bottom">
        <div class="wrap">
            <!-- start header menu -->
            <ul class="megamenu skyblue">
                <li><a class="color10" href="Home.jsp">Home</a></li>
                <li class="grid">
                    <a class="color7" href="Login.jsp">Account</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <h4>Account</h4>
                                    <ul>
                                        <li><a href="Login.jsp">Login</a></li>
                                        <li><a href="Registration.jsp">Create New Account</a></li>
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
	padding-bottom: 2px;margin-top:4px;" class="viewcart"> View Cart</a>               </ul>  
                     
        </div>
        <div class="clear"></div>
    </div>

   <div class="single">
        <div class="wrap">
             <div class="cont span_2_of_3">
                <div class="labout span_1_of_a1">                   
                     <!-- start item_image
                     session data inserted -->
                 <c:forEach var="bookDetails" items="${BookDetails}">
                    
                    <ul id="etalage">                        
                        <li>
                            <img src=${bookDetails.imgPath } alt="Image Got Lost" id="itemImage" style=" border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; border-top-left-radius: 20px; border-top-right-radius: 20px">
                        </li>   
                                            
                    </ul>
                    <!-- end item_image -->
                </div>
                 
                <div class="cont1 span_2_of_a1">
                    <div>
                        <label id="item_name">Book Name: ${bookDetails.bookName }</label>
                    	
                    </div>
                     <div>
                    	<label style=" font-size: small">Author : ${bookDetails.author }</label>
                    </div>
                                      
                    <div class="price_single">
                        <label style=" font-size: small">Price : </label>
                        <label id="price" style=" font-size: small">₹${bookDetails.price }</label>
                    </div>
                   
                    <div>
                        <label style=" font-size: small">Category : </label>
                        <label id="prep" style=" font-size: small"> </label>
                    </div>
					
                    <div class="clear"></div>
                    		
                     <form name="bookAdd" method="POST" action="AddBook">       
                    <div class="btn_form">
                    	<p><strong>Quantity: <input type="text" size="2" value="1" name="quantity"></strong>
                        <input type="submit" name="addToCart" value="Add To Cart" id="Order" class="order" style=" padding-top: 5px; padding-bottom: 5px">
                    </div>
                    </form>
                    <p class="m_desc">
                         Within 1day guaranteed
                    </p>
                    
                    <p class="m_desc">
                         No Delivery Charges
                    </p>
                    
                    </div>

                </div>
                <div class="clear"></div><hr>
        </div>
</div>

    <div style="padding-left: 10%">

    <!--<table id="desc" style=" padding: 10; width: 200px"></table>-->
    <fieldset>
        <legend><i>Know your Book</i></legend><br>
        <p id="description" class="m_desc" style="width: 600px">
            This is a multi-line paragraph for the item description.
            ${bookDetails.details }
                    </p>
    </fieldset>
	</c:forEach>
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

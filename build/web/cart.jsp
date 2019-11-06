

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="CodePixar">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title --> 
        <link href="resources/css/linearicons.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="resources/css/themify-icons.css" type="text/css">
        <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="resources/css/owl.carousel.css" type="text/css">
        <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="resources/css/nouislider.min.css" type="text/css">
        <link rel="stylesheet" href="resources/css/ion.rangeSlider.css"  type="text/css"/>
        <link rel="stylesheet" href="resources/css/ion.rangeSlider.skinFlat.css" type="text/css" />
        <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="resources/css/main.css" type="text/css">
        <script src="resources/js/vendor/angular.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
        <script>
function add(){
var a,b,c;
a=Number(document.getElementById("a").value);
b=Number(document.getElementById("b").value);
c = a * b;
document.getElementById("answer").value= c;
}
window.onload = add;
</script>
    </head>
    <body>
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="home.htm"><img src="resources/img/logo.png" alt="image"></a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item active"><a class="nav-link" href="home.htm">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="product.htm">Product</a></li>

                                <li class="nav-item"><a class="nav-link" href="log.htm">Login</a></li>
                                <li class="nav-item"><a class="nav-link" href="admin.htm">Admin</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                            <li class="nav-item"><a href="bag.htm" class="cart"><span class="ti-bag">
                                    <c:out value="${numberOfProduct}"></c:out>
                                        </span></a></li>
                                <li class="nav-item">
                                    <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="search_input" id="search_input_box">
                <div class="container">
                    <form class="d-flex justify-content-between">
                        <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                        <button type="submit" class="btn"></button>
                        <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                    </form>
                </div>
            </div>
        </header>
        <div style="padding-top: 10%">
            <f:facet name="header">
                <span class="d-block p-2 bg-secondary text-white" style="text-align: center; font-size: 20px;"> All Products</span>  
            </f:facet>
        <section class="banner-area">
            <div class="container">
                <div class="row fullscreen align-items-center justify-content-start">
                    <div ng-app="app" ng-controller="cont" class="row" style="text-align: center; font-weight: bold; padding-bottom: 25px;"  ng-controller="myCtrl" | filter: 'search'>
                         <form action="saveOrder.htm">
                         <table cellpadding="25">
                            <tr>
                                <td>Product ID</td>
                                <td>Name</td>
                                <td>Quantity</td>
                                <td>Price</td>
                                <td>Total</td>
                                <td>Action</td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" value="${proOrder.proId}" name="proId"/>    
                                </td>
                                <td>
                                    <input type="text" value="${proOrder.proName}" name="proName"/>    
                                </td>
                                <td>
                                    <input type="text" id="a" value="1" onkeyup="add()" name="proQty" />    
                                </td>
                                <td>
                                    <input type="text" id="b"  value="${proOrder.proPrice}" readonly="" />    
                                </td>
                                <td>
                                    <input type="text" id="answer" name="totalPrice" readonly=""/>    
                                </td>
                                <td>
                                    <input type="submit" value="Confirm" />    
                                </td>
                            </tr>
                           
                        </table>
                        </form>
                    </div>

                </div>
            </div>
        </section>
        <script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="resources/js/vendor/bootstrap.min.js"></script>
        <script src="resources/js/jquery.ajaxchimp.min.js"></script>
        <script src="resources/js/jquery.nice-select.min.js"></script>
        <script src="resources/js/jquery.sticky.js"></script>
        <script src="resources/js/nouislider.min.js"></script>
        <script src="resources/js/countdown.js"></script>
        <script src="resources/js/jquery.magnific-popup.min.js"></script>
        <script src="resources/js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="resources/js/gmaps.min.js"></script>
        <script src="resources/js/main.js"></script>
        <script>
            var app = angular.module("app",[]);
            app.controller("cont", function($scope){
                
                
            });
        </script>
    </body>
</html>

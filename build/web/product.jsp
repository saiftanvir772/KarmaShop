

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
        <script src="jar/angular.min.js" type="text/javascript"></script>

        <title>JSP Page</title>
    </head>
    <body ng-app="myApp">
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
                        <input type="text" class="form-control" id="search_input" placeholder="Search Here" ng-model="search">
                        <button type="submit" class="btn"></button>
                        <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                    </form>
                </div>
            </div>
        </header>
        
        <div style="padding-top: 15%">
            <f:facet name="header">
                <span class="d-block p-2 bg-secondary text-white" style="text-align: center; font-size: 20px;"> All Products</span>  
            </f:facet>

            <section class="banner-area">
                <div class="container-fluid">
                    <div class="row">
                         <c:forEach items="${plist}" var="a">
                    
                           
                                <div class="col-md-4" style="padding-bottom: 25px; text-align: center">
                                    <img src="resources/img/product/${a.proImg}" height="210px"; width="150px;"/>
                                    <p>Name : ${a.proName}</p>
                                    <p>Id : ${a.proId}</p>
                                    Price :  <b>${a.proPrice}</b>
                                    <p>Brand :${a.proBrand}</p>
                                    <a class="btn btn-primary" href="addtocart.htm?proId=${a.proId}&&proName=${a.proName}&&proPrice=${a.proPrice}&&proBrand=${a.proBrand}">Add to Cart </a>
                               
                                
                       </div>
                       </c:forEach>
                    </div>
                </div>
            </section>
    </div>
    <footer class="footer-area section_gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>About Us</h6>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore
                            magna aliqua.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>Newsletter</h6>
                        <p>Stay update with our latest</p>
                        <div class="" id="mc_embed_signup">

                            <form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                  method="get" class="form-inline">

                                <div class="d-flex flex-row">

                                    <input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
                                           required="" type="email">


                                    <button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                                    <div style="position: absolute; left: -5000px;">
                                        <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                                    </div>

                                    <!-- <div class="col-lg-4 col-md-4">
                                                            <button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
                                                    </div>  -->
                                </div>
                                <div class="info"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget mail-chimp">
                        <h6 class="mb-20">Instragram Feed</h6>
                        <ul class="instafeed d-flex flex-wrap">
                            <li><img src="resources/img/i1.jpg" alt=""></li>
                            <li><img src="resources/img/i2.jpg" alt=""></li>
                            <li><img src="resources/img/i3.jpg" alt=""></li>
                            <li><img src="resources/img/i4.jpg" alt=""></li>
                            <li><img src="resources/img/i5.jpg" alt=""></li>
                            <li><img src="resources/img/i6.jpg" alt=""></li>
                            <li><img src="resources/img/i7.jpg" alt=""></li>
                            <li><img src="resources/img/i8.jpg" alt=""></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>Follow Us</h6>
                        <p>Let us be social</p>
                        <div class="footer-social d-flex align-items-center">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
                <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>
    </footer>
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
                            var app = angular.module('myApp', []);
                            app.controller('myCtrl', function ($scope) {
                                $scope.orderList = [];
                                        refreshSimpleOrderData();
                                        function refreshSimpleOrderData() {
                                            $http({
                                                method: 'GET',
                                                url: 'http://localhost:8080/kenakata/service/simpleOrder'
                                            }).then(function successCallback(response) {
                                                $scope.orderList = response.data;
                                                console.log($scope.simples);
                                            });  
                                        }

                                      
                                        //-----------------------------------------------------------
                                        function success(response) {
                                            refreshSimpleData();
                                            $scope.isVisible = false;
                                            refreshSimpleOrderData();
                                            $scope.msg = "Successfull"
                                            //clearFormData()
                                        }
                                        function error(response) {
                                            console.log(response.statusText);
                                            $scope.msg = "Failed, Try Again"
                                        }
                            });
    </script>
</body>
</html>

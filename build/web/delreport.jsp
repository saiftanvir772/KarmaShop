

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

    <head>
        <!-- Mobile Specific Meta -->
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
        <title>Karma Shop</title>
        <!--
                CSS
                ============================================= -->

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
    </head>

    <body>

        <!-- Start Header Area -->
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
                                <li class="nav-item active"><a class="nav-link" href="allOrder.htm">Order</a></li>
                                <li class="nav-item"><a class="nav-link" href="productA.htm">Product</a></li>
                                <li class="nav-item"><a class="nav-link" href="addcat.htm">Add Category</a></li>
                                <li class="nav-item"><a class="nav-link" href="addsubcat.htm">Add Sub Category</a></li>
                               
                                <li class="nav-item"><a class="nav-link" href="addproduct.htm">Add Product</a></li>
                                <li class="nav-item"><a class="nav-link" href="home.htm">Logout</a></li>
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
        <!-- End Header Area -->

        <!-- start banner Area -->
        <section class="banner-area">
            <div class="container">
                <div class="row fullscreen align-items-center justify-content-start">
                    <div class="col-lg-12">
                        <form>
                            <table cellPadding="15">
                                <tr style="color: green">
                                    <td>Delivary No.</td>
                                    <td>Customer Name :</td>
                                    <td>Product Details </td>
                                    <td>Total Price </td>
                                    <td> Zone Name </td>
                                    <td> Mobile No </td>
                                    <td> Delivery Address </td>
                                </tr>
                                <c:forEach items="${delivary}" var="a">
                                    <tr>
                                        <td>${a.delivaryId}</td>
                                        <td>${a.customerName}</td>
                                        <td>${a.prodetail}</td>
                                        <td>${a.paytk}</td>
                                        <td>${a.zoneName}</td>
                                        <td>${a.phone}</td>
                                        <td>${a.address}</td>
                                        <td>  <button class="btn-danger "><a href="delivarydel.htm?delivaryId=${a.delivaryId}">Delete</a></button> </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- End banner Area -->

        <!-- start features Area -->
        <section class="features-area section_gap">
            <div class="container">
                <div class="row features-inner">
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="resources/img/features/f-icon1.png" alt="">
                            </div>
                            <h6>Free Delivery</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="resources/img/features/f-icon2.png" alt="">
                            </div>
                            <h6>Return Policy</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="resources/img/features/f-icon3.png" alt="">
                            </div>
                            <h6>24/7 Support</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="resources/img/features/f-icon4.png" alt="">
                            </div>
                            <h6>Secure Payment</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end features Area -->

        <!-- Start category Area -->
        <section class="category-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-12">
                        <div class="row">
                            <div class="col-lg-8 col-md-8">
                                <div class="single-deal">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="resources/img/category/c1.jpg" alt="">
                                    <a href="resources/img/category/c1.jpg" class="img-pop-up" target="_blank">
                                        <div class="deal-details">
                                            <h6 class="deal-title">Sneaker for Sports</h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="single-deal">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="resources/img/category/c2.jpg" alt="">
                                    <a href="resources/img/category/c2.jpg" class="img-pop-up" target="_blank">
                                        <div class="deal-details">
                                            <h6 class="deal-title">Sneaker for Sports</h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="single-deal">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="resources/img/category/c3.jpg" alt="">
                                    <a href="resources/img/category/c3.jpg" class="img-pop-up" target="_blank">
                                        <div class="deal-details">
                                            <h6 class="deal-title">Product for Couple</h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8">
                                <div class="single-deal">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="resources/img/category/c4.jpg" alt="">
                                    <a href="resources/img/category/c4.jpg" class="img-pop-up" target="_blank">
                                        <div class="deal-details">
                                            <h6 class="deal-title">Sneaker for Sports</h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-deal">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="resources/img/category/c5.jpg" alt="">
                            <a href="resources/img/category/c5.jpg" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title">Sneaker for Sports</h6>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End category Area -->

        <!-- start product Area -->
       
        <!-- end product Area -->

        <!-- Start exclusive deal Area -->
        <section class="exclusive-deal-area">
            <div class="container-fluid">
                <div class="row justify-content-center align-items-center">
                    <div class="col-lg-6 no-padding exclusive-left">
                        <div class="row clock_sec clockdiv" id="clockdiv">
                            <div class="col-lg-12">
                                <h1>Exclusive Hot Deal Ends Soon!</h1>
                                <p>Who are in extremely love with eco friendly system.</p>
                            </div>
                            <div class="col-lg-12">
                                <div class="row clock-wrap">
                                    <div class="col clockinner1 clockinner">
                                        <h1 class="days">150</h1>
                                        <span class="smalltext">Days</span>
                                    </div>
                                    <div class="col clockinner clockinner1">
                                        <h1 class="hours">23</h1>
                                        <span class="smalltext">Hours</span>
                                    </div>
                                    <div class="col clockinner clockinner1">
                                        <h1 class="minutes">47</h1>
                                        <span class="smalltext">Mins</span>
                                    </div>
                                    <div class="col clockinner clockinner1">
                                        <h1 class="seconds">59</h1>
                                        <span class="smalltext">Secs</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="" class="primary-btn">Shop Now</a>
                    </div>
                    <div class="col-lg-6 no-padding exclusive-right">
                        <div class="active-exclusive-product-slider">
                            <!-- single exclusive carousel -->
                            <div class="single-exclusive-slider">
                                <img class="img-fluid" src="resources/img/product/e-p1.png" alt="">
                                <div class="product-details">
                                    <div class="price">
                                        <h6>$150.00</h6>
                                        <h6 class="l-through">$210.00</h6>
                                    </div>
                                    <h4>addidas New Hammer sole
                                        for Sports person</h4>
                                    <div class="add-bag d-flex align-items-center justify-content-center">
                                        <a class="add-btn" href=""><span class="ti-bag"></span></a>
                                        <span class="add-text text-uppercase">Add to Bag</span>
                                    </div>
                                </div>
                            </div>
                            <!-- single exclusive carousel -->
                            <div class="single-exclusive-slider">
                                <img class="img-fluid" src="resources/img/product/e-p1.png" alt="">
                                <div class="product-details">
                                    <div class="price">
                                        <h6>$150.00</h6>
                                        <h6 class="l-through">$210.00</h6>
                                    </div>
                                    <h4>addidas New Hammer sole
                                        for Sports person</h4>
                                    <div class="add-bag d-flex align-items-center justify-content-center">
                                        <a class="add-btn" href=""><span class="ti-bag"></span></a>
                                        <span class="add-text text-uppercase">Add to Bag</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End exclusive deal Area -->

        <!-- Start brand Area -->
        <section class="brand-area section_gap">
            <div class="container">
                <div class="row">
                    <a class="col single-img" href="#">
                        <img class="img-fluid d-block mx-auto" src="resources/img/brand/1.png" alt="">
                    </a>
                    <a class="col single-img" href="#">
                        <img class="img-fluid d-block mx-auto" src="resources/img/brand/2.png" alt="">
                    </a>
                    <a class="col single-img" href="#">
                        <img class="img-fluid d-block mx-auto" src="resources/img/brand/3.png" alt="">
                    </a>
                    <a class="col single-img" href="#">
                        <img class="img-fluid d-block mx-auto" src="resources/img/brand/4.png" alt="">
                    </a>
                    <a class="col single-img" href="#">
                        <img class="img-fluid d-block mx-auto" src="resources/img/brand/5.png" alt="">
                    </a>
                </div>
            </div>
        </section>
        <!-- End brand Area -->

       

        <!-- start footer Area -->
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
        <!-- End footer Area -->

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
    </body>

</html>

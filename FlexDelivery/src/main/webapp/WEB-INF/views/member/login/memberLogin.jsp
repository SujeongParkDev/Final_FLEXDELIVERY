<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Askbootstrap">
    <meta name="author" content="Askbootstrap">
    <link rel="icon" type="image/png" href="<c:url value='/resources/memberResources/img/fav.png' />">
    <title>Swiggiweb - Online Food Ordering Website Template</title>
    <!-- Slick Slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/memberResources/vendor/slick/slick.min.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/memberResources/vendor/slick/slick-theme.min.css' />" />
    <!-- Feather Icon-->
    <link href="<c:url value='/resources/memberResources/vendor/icons/feather.css' />" rel="stylesheet" type="text/css">
    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/memberResources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/memberResources/css/style.css' />" rel="stylesheet">
    <!-- Sidebar CSS -->
    <link href="<c:url value='/resources/memberResources/vendor/sidebar/demo.css' />" rel="stylesheet">
</head>

<body>
    <div class="login-page vh-100">
        <video loop autoplay muted id="vid">
            <source src="<c:url value='/resources/memberResources/img/bg.mp4' />" type="video/mp4">
            <source src="<c:url value='/resources/memberResources/img/bg.mp4' />" type="video/ogg">
            Your browser does not support the video tag.
         </video>
        <div class="d-flex align-items-center justify-content-center vh-100">
            <div class="px-5 col-md-6 ml-auto">
                <div class="px-5 col-10 mx-auto">
                    <h2 class="text-dark my-0">Welcome Back</h2>
                    <p class="text-50">Sign in to continue</p>
                    <form class="mt-5 mb-4" action="<c:url value='/login.do' />">
                        <div class="form-group">
                            <label for="exampleInputEmail1" class="text-dark">Email</label>
                            <input type="text" placeholder="Enter Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="userId">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="text-dark">Password</label>
                            <input type="password" placeholder="Enter Password" class="form-control" id="exampleInputPassword1" name="pwd">
                        </div>
                        <button class="btn btn-primary btn-lg btn-block">SIGN IN</button>
                        <div class="py-2">
                            <button class="btn btn-lg btn-facebook btn-block"><i class="feather-facebook"></i> Connect with Facebook</button>
                        </div>
                    </form>
                    <a href="<c:url value='/resources/memberResources/forgot_password.html' />" class="text-decoration-none">
                        <p class="text-center">Forgot your password?</p>
                    </a>
                    <div class="d-flex align-items-center justify-content-center">
                        <a href="<c:url value='/resources/memberResources/signup.html' />">
                            <p class="text-center m-0">Don't have an account? Sign up</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav id="main-nav">
        <ul class="second-nav">
            <li><a href="<c:url value='/resources/memberResources/home.html' />"><i class="feather-home mr-2"></i> Homepage</a></li>
            <li><a href="<c:url value='/resources/memberResources/my_order.html' />"><i class="feather-list mr-2"></i> My Orders</a></li>
            <li>
                <a href="#"><i class="feather-edit-2 mr-2"></i> Authentication</a>
                <ul>
                    <li><a href="<c:url value='/resources/memberResources/login.html' />">Login</a></li>
                    <li><a href="<c:url value='/resources/memberResources/signup.html' />">Register</a></li>
                    <li><a href="<c:url value='/resources/memberResources/forgot_password.html' />">Forgot Password</a></li>
                    <li><a href="<c:url value='/resources/memberResources/verification.html' />">Verification</a></li>
                    <li><a href="<c:url value='/resources/memberResources/location.html' />">Location</a></li>
                </ul>
            </li>
            <li><a href="<c:url value='/resources/memberResources/favorites.html' />"><i class="feather-heart mr-2"></i> Favorites</a></li>
            <li><a href="<c:url value='/resources/memberResources/trending.html' />"><i class="feather-trending-up mr-2"></i> Trending</a></li>
            <li><a href="<c:url value='/resources/memberResources/most_popular.html' />"><i class="feather-award mr-2"></i> Most Popular</a></li>
            <li><a href="<c:url value='/resources/memberResources/restaurant.html' />"><i class="feather-paperclip mr-2"></i> Restaurant Detail</a></li>
            <li><a href="<c:url value='/resources/memberResources/checkout.html' />"><i class="feather-list mr-2"></i> Checkout</a></li>
            <li><a href="<c:url value='/resources/memberResources/successful.html' />"><i class="feather-check-circle mr-2"></i> Successful</a></li>
            <li><a href="<c:url value='/resources/memberResources/map.html' />"><i class="feather-map-pin mr-2"></i> Live Map</a></li>
            <li>
                <a href="#"><i class="feather-user mr-2"></i> Profile</a>
                <ul>
                    <li><a href="<c:url value='/resources/memberResources/profile.html' />">Profile</a></li>
                    <li><a href="<c:url value='/resources/memberResources/favorites.html' />">Delivery support</a></li>
                    <li><a href="<c:url value='/resources/memberResources/contact-us.html' />">Contact Us</a></li>
                    <li><a href="<c:url value='/resources/memberResources/terms.html' />">Terms of use</a></li>
                    <li><a href="<c:url value='/resources/memberResources/privacy.html' />">Privacy & Policy</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="feather-alert-triangle mr-2"></i> Error</a>
                <ul>
                    <li><a href="<c:url value='/resources/memberResources/not-found.html' />">Not Found</a>
                        <li><a href="<c:url value='/resources/memberResources/maintence.html' />"> Maintence</a>
                            <li><a href="<c:url value='/resources/memberResources/coming-soon.html' />">Coming Soon</a>
                </ul>
                </li>
                <li>
                    <a href="#"><i class="feather-link mr-2"></i> Navigation Link Example</a>
                    <ul>
                        <li>
                            <a href="#">Link Example 1</a>
                            <ul>
                                <li>
                                    <a href="#">Link Example 1.1</a>
                                    <ul>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Link Example 1.2</a>
                                    <ul>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Link Example 2</a></li>
                        <li><a href="#">Link Example 3</a></li>
                        <li><a href="#">Link Example 4</a></li>
                        <li data-nav-custom-content>
                            <div class="custom-message">
                                You can add any custom content to your navigation items. This text is just an example.
                            </div>
                        </li>
                    </ul>
                </li>
        </ul>
        <ul class="bottom-nav">
            <li class="email">
                <a class="text-danger" href="<c:url value='/resources/memberResources/home.html' />">
                    <p class="h5 m-0"><i class="feather-home text-danger"></i></p>
                    Home
                </a>
            </li>
            <li class="github">
                <a href="<c:url value='/resources/memberResources/faq.html' />">
                    <p class="h5 m-0"><i class="feather-message-circle"></i></p>
                    FAQ
                </a>
            </li>
            <li class="ko-fi">
                <a href="<c:url value='/resources/memberResources/contact-us.html' />">
                    <p class="h5 m-0"><i class="feather-phone"></i></p>
                    Help
                </a>
            </li>
        </ul>
    </nav>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="<c:url value='/resources/memberResources/vendor/jquery/jquery.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/resources/memberResources/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>
    <!-- slick Slider JS-->
    <script type="text/javascript" src="<c:url value='/resources/memberResources/vendor/slick/slick.min.js' />"></script>
    <!-- Sidebar JS-->
    <script type="text/javascript" src="<c:url value='/resources/memberResources/vendor/sidebar/hc-offcanvas-nav.js' />"></script>
    <!-- Custom scripts for all pages-->
    <script type="text/javascript" src="<c:url value='/resources/memberResources/js/osahan.js' />"></script>
</body>

</html>
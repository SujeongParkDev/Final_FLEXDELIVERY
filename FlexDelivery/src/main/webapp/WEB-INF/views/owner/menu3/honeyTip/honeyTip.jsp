<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../ownerInc/top.jsp" %>
  <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans", https://fonts.google.com/ -->
    <link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">         <!-- Font Awesome, http://fontawesome.io/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">                               <!-- Bootstrap styles, https://getbootstrap.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tooplate-style.css">                            <!-- Templatemo style -->

	<!-- QQQ. honey tip 게시판 만드신 후에  span 태그 앞 숫자에는 꿀팁 글 번호를 넣으시고 그 번호에 해당하는 게시물에 바로갈수있게 href 수정부탁드려요
						H O N E Y T I P  이라고 적혀있는건 전체 게시판을 연결해주시고
						그밑에거는 또 번호에 해당하는 곳으로 이동시켜주세요 -->
                    <!-- Single Blog Area  -->
                 <div class="container-fluid">
            <div class="tm-body">
                <div class="tm-sidebar sticky">
                    <section id="welcome" class="tm-content-box tm-banner margin-b-15">
                        <div class="tm-banner-inner">
                            <i class="fa fa-film fa-4x margin-b-40"></i>
                            <h1 class="tm-banner-title">Mason</h1>
                            <p class="tm-banner-subtitle">new HTML template</p>       /FlexDelivery/src/main/webapp/WEB-INF/views/owner/menu3/honeyTip/css/bootstrap.min.css            
                        </div>                    
                    </section>
                    <nav class="tm-main-nav">
                        <ul class="tm-main-nav-ul">
                            <li class="tm-nav-item"><a href="index.html" class="tm-nav-item-link tm-button active">Gallery</a>
                            </li>
                            <li class="tm-nav-item"><a href="timeline.html" class="tm-nav-item-link tm-button">Timeline</a>
                            </li>
                            <li class="tm-nav-item"><a href="about.html" class="tm-nav-item-link tm-button">About</a>
                            </li>
                            <li class="tm-nav-item"><a href="contact.html" class="tm-nav-item-link tm-button">Contact</a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="tm-main-content tm-gallery-container">                    
                    <div class="grid">                                                    
                        <div class="grid-item"><img src="<c:url value='../../img/gallery-img-23-01.jpg'/>" alt="Image"></div>
                        <div class="grid-item"><img src="<c:url value='img/gallery-img-11-01.jpg'/>" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-12-01.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-11-02.jpg" alt="Image"></div>                        
                        <div class="grid-item"><img src="img/gallery-img-12-02.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-23-02.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-11-03.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-23-03.jpg" alt="Image"></div>                        
                        <div class="grid-item"><img src="img/gallery-img-11-04.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-11-05.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-12-03.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-12-04.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-11-06.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-23-04.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-11-07.jpg" alt="Image"></div>
                        <div class="grid-item"><img src="img/gallery-img-23-05.jpg" alt="Image"></div>
                    </div>                    
                </div> <!-- tm-main-content -->
            </div>

            <footer class="tm-footer text-right">
                <p>Copyright &copy; <span class="tm-current-year">2018</span> Your Company 
                
                - Designed by Tooplate</p>
            </footer> 

        </div> <!-- container-fluid -->
        
        <!-- load JS files -->
        
        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/imagesloaded.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
        <script src="js/masonry.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
        
        <!-- Templatemo scripts -->
        <script>  
    
        $(document).ready(function(){

            // init Masonry
            // https://codepen.io/craigwheeler/pen/MYjBga
            var $grid = $('.grid').masonry({
                
                // set itemSelector so .grid-sizer is not used in layout
                // itemSelector: '.grid-item',
                // use element for option
                // columnWidth: '.grid-sizer',
                // percentPosition: true

                itemSelector: '.grid-item',
                isFitWidth: true,
                columnWidth: 1
            });
            // layout Masonry after each image loads
            $grid.imagesLoaded().progress( function() {
              $grid.masonry('layout');
            });            

            // Update the current year in copyright
            $('.tm-current-year').text(new Date().getFullYear());        
        });

        </script>
    </body>

<%@ include file="../../../ownerInc/bottom.jsp" %>
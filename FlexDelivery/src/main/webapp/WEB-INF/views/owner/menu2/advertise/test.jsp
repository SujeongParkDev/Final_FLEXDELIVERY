 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<!DOCTYPE html>
  <html>
  <head>
	
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">


<script type="text/javascript" src="<c:url value='/resources/ownerResources/herbJs/jquery-3.5.1.min.js'/>"></script>

<script type="text/javascript">
$(function(){
$(document).on("click", ".naccs .menu div", function() {
	  var numberIndex = $(this).index();

	  if (!$(this).is("active")) {
	    $(".naccs .menu div").removeClass("active");
	    $(".naccs ul li").removeClass("active");

	    $(this).addClass("active");
	    $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

	    var listItemHeight = $(".naccs ul")
	      .find("li:eq(" + numberIndex + ")")
	      .innerHeight();
	    $(".naccs ul").height(listItemHeight + "px");
	  }
	});
});  
	
</script>
<style>
@import url('https://fonts.googleapis.com/css?family=Oswald');

$base-color: #303F9F;
$second-color: #3F51B5;
$third-color: #FBC02D;
$site: #303F9F;
$light: #fff;

body {
 position: relative;
 font-family: 'Oswald', sans-serif;
 background: $site;
 color: $light;
 font-size: 20px;
}

.grid {
 list-style: none;
 margin-left: -40px;
}

.gc {
 box-sizing: border-box;
 display: inline-block;
 margin-right: -.25em;
 min-height: 1px;
 padding-left: 40px;
 vertical-align: top;
}

.gc--1-of-3 {
 width: 33.33333%;
}

.gc--2-of-3 {
 width: 66.66666%;
}

.naccs {
 position: relative;
 max-width: 900px;
 margin: 100px auto 0;
}

.naccs .menu div {
 padding: 15px 20px 15px 40px;
 margin-bottom: 10px;
 color: $base-color;
 background: $second-color;
 box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
 cursor: pointer;
 position: relative;
 vertical-align: middle;
 font-weight: 700;
 transition: 1s all cubic-bezier(0.075, 0.82, 0.165, 1);
}

.naccs .menu div:hover {
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.naccs .menu div span.light {
 height: 10px;
 width: 10px;
 position: absolute;
 top: 24px;
 left: 15px;
 background-color: $base-color;
 border-radius: 100%;
 transition: 1s all cubic-bezier(0.075, 0.82, 0.165, 1);
}

.naccs .menu div.active span.light {
 background-color: $third-color;
 left: 0;
 height: 100%;
 width: 3px;
 top: 0;
 border-radius: 0;
}

.naccs .menu div.active {
 color: $third-color;
 padding: 15px 20px 15px 20px;
}

ul.nacc {
 position: relative;
 height: 0px;
 list-style: none;
 margin: 0;
 padding: 0;
 transition: .5s all cubic-bezier(0.075, 0.82, 0.165, 1);
}

ul.nacc li {
 opacity: 0;
 transform: translateX(50px);
 position: absolute;
 list-style: none;
 transition: 1s all cubic-bezier(0.075, 0.82, 0.165, 1);
}

ul.nacc li.active {
 transition-delay: .3s;
 z-index: 2;
 opacity: 1;
 transform: translateX(0px);
}

ul.nacc li p {
 margin: 0;
}
</style>
</head>
<body>
<div class="naccs">
  <div class="grid">
   <div class="gc gc--1-of-3">
    <div class="menu">
     <div class="active"><span class="light"></span><span>내정보</span></div>
     <div><span class="light"></span><span>사업자등록</span></div>
     <div><span class="light"></span><span>점포</span></div>
    </div>
   </div>
   <div class="gc gc--2-of-3">
    <ul class="nacc">
     <li class="active">
      <div>
       <p>Beer is the world's oldest[1][2][3] and most widely consumed[4] alcoholic drink; it is the third most popular drink overall, after water and tea.[5] The production of beer is called brewing, which involves the fermentation of sugars, mainly derived
        from cereal grain starches—most commonly from malted barley, although wheat, maize (corn), and rice are widely used.[6] Most beer is flavoured with hops, which add bitterness and act as a natural preservative, though other flavourings such as
        herbs or fruit may occasionally be included. The fermentation process causes a natural carbonation effect, although this is often removed during processing, and replaced with forced carbonation.[7] Some of humanity's earliest known writings refer
        to the production and distribution of beer: the Code of Hammurabi included laws regulating beer and beer parlours,[8] and "The Hymn to Ninkasi", a prayer to the Mesopotamian goddess of beer, served as both a prayer and as a method of remembering
        the recipe for beer in a culture with few literate people.[9][10]</p>
      </div>
     </li>
     <li>
      <div>
       <p>A vine (Latin vīnea "grapevine", "vineyard", from vīnum "wine") in the narrowest sense is the grapevine (Vitis), but more generally it can refer to any plant with a growth habit of trailing or scandent (that is, climbing) stems, lianas or runners.
        The word also can refer to such stems or runners themselves, for instance when used in wicker work.[1][2] In the United Kingdom, the term "vine" applies almost exclusively to the grapevine. The term "climber" is used for all climbing plants.[3]</p>
      </div>
     </li>
     <li>
      <div>
       <p>Lemonade is any of various sweetened beverages found around the world, all characterized by lemon flavor. Most lemonade varieties can be separated into two distinct types: cloudy and clear; each is known simply as "lemonade" (or a cognate) in countries
        where dominant.[1] Cloudy lemonade, generally found in North America and India, is a traditionally homemade drink made with lemon juice, water, and sweetener such as cane sugar or honey.[2] Found in the United Kingdom, Ireland, South Africa, Australia,
        and New Zealand, clear lemonade is a lemon flavoured carbonated soft drink. Not to be confused with Sprite a lemon-lime flavored, soft drink.</p>
      </div>
     </li>
    </ul>
   </div>
  </div>
 </div>

</body>
</html> 

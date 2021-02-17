<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);
      
      $(function(){
    	  $.ajax({
				url:"<c:url value='/owner/menu2/reviewOwner/ratingstars.do'/>",
				success:function(map){
					//alert(res);
					// 방법 1 하나씩 꺼낸다 2 each돌린다 
					// var five=res.rating ?? 
					//var stars=${map.countNum};
					//var many=${map.many};
					//alert(stars);
    	  		drawStuff(map)
				},
				error:function(xhr, status, error){
					alert("error발생:"+ error);
				}
			});
      });

      function drawStuff(map) {
    	  alert(map);
    	 var result = res['map']
        var data = new google.visualization.arrayToDataTable([
          ['countNum', 'many'],
          ["5점 ", map[0]],
          ["4점 ", 31],
          ["3점 ", 12],
          ["2점 ", 10],
          ['1점 ', 3]
        ]);

        var options = {
          title: 'Chess opening moves',
         
          legend: { position: 'none' },
          chart: { title: '우리 가게 고객들의 리뷰 별점입니다. ',
                   subtitle: 'Reviews by my store customers, star ratings' },
          bars: 'horizontal', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'top', label: 'Stars'} // Top x-axis.
            }
          },
          bar: { groupWidth: "40%" },
          series: {
              0: {color: '#0d6efd'},
          }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };
    </script>
  </head>
  <body>
    <div id="top_x_div" style="width: 300px; height: 300px;"></div>
  </body>
</html>


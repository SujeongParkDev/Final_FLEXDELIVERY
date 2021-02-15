<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
    	  $.ajax({
    		  type : "GET",
    		  url : "/owner/menu2/reviewOwner/ratingstars.do",
   			  dataType:"json",
			  contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		  success : function(response){
    			alert(response);
    			  if(response["result"] == "success"){
    				  
        var data = new google.visualization.arrayToDataTable([
          ['', 'Percentage'],
          ["5점 ", 44],
          ["4점 ", 31],
          ["3점 ", 12],
          ["2점 ", 10],
          ['1점 ', 3]
        ]);
    			  
    			  }//if 
   			   }
    	  });//ajax 
      }
        var options = {
          title: 'Chess opening moves',
         
          legend: { position: 'none' },
          chart: { title: '우리 가게 고객들의 평균 별점입니다. ',
                   subtitle: 'popularity by percentage' },
          bars: 'horizontal', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'top', label: 'Percentage'} // Top x-axis.
            }
          },
          bar: { groupWidth: "40%" },
          series: {
              0: {color: '#0d6efd'},
          }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="top_x_div" style="width: 300px; height: 300px;"></div>
  </body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['주간', '지난주', '이번주'],
          ['월', 5, 40],
          ['화', 30, 40],
          ['수', 40, 11],
          ['목', 20, 10],
          ['금', 10, 30],
          ['토', 5, 20],
          ['일', 7, 10]
        ]);

        var options = {
                legend: 'none',
                bar: {
                    groupWidth: 20
                 },
                series: {
                    0: {color: '#4682B4'},
                    1: {color: '#FF8C00'}
                }
            };
        	

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data , google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 100%;; height: 80%;"></div>
  </body>
</html>


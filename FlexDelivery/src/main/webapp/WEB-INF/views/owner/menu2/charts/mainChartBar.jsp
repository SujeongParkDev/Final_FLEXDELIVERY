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
          ['주간',  '이번주',{ role: 'style' }],
          ['월',  40, '#b87333'],
          ['화',  40, 'yellow'],
          ['수',  11, 'blue'],
          ['목',  10, 'red'],
          ['금',  30, 'yellow'],
          ['토',  20, 'blue'],
          ['일',  10, 'red']
        ]);
/* 
        var options = {
                legend: 'none',
                bar: {
                    groupWidth: 20
                 } ,
                series: {
                    0: {color: '#4682B4'},
                    1: {color: '#FF8C00'}
                } 
            };
        	 */

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data /* , google.charts.Bar.convertOptions(options) */);
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 100%;; height: 80%;"></div>
  </body>
</html>


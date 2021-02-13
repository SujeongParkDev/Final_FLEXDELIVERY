<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
    <script type="text/javascript">
    $(function(){
    	var chart = c3.generate({
    		size: {
    			height:250
    		},
    	    bindto: '#chart2',
    	    data: {
    	      columns: [
    	        ['data1', 30, 200, 100, 400, 150, 250,333],
    	        ['data2', 50, 20, 10, 40, 15, 25,44]
    	      ],
          	  names:{
            	data1:'지난주',
            	data2:'이번주'
           	 },
           	 types: {
                 data1: 'area',
                 data2: 'area'
             }
    	    },
    	    axis: {
    	        x: {
    	            type: 'category',
    	            categories: ['월', '화', '수', '목', '금', '토', '일'],
    	        }
    	        
    	    },
            grid: {
                y: {
                    show: true
                }
            }
    	});
    });
    </script>

    <div id="chart2"></div>
 
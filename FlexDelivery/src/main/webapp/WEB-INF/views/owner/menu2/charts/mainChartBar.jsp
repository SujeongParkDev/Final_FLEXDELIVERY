<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <script type="text/javascript">
    $(function(){
    	
   
	    var chart4 = c3.generate({
	    	size:{
				height:200
			},
	    	 bindto: '#chart3',
	        data: {
	            columns: [
	            	 ['data1', 30, 200, 100, 400, 150, 250,333],
	     	      	 ['data2', 50, 20, 10, 0,0, 0,0]
	               
	            ],
	            names: {
		            data1: '이번주',
		            data2: '지난주',
		        },
	            type: 'bar',
	            colors: {
	                data1: '#ff0990',
	                data2: '#772200'
	            },
	            labels: true
	            
	        },
	        axis: {
    	        x: {
    	            type: 'category',
    	            categories: ['월', '화', '수', '목', '금', '토', '일']
    	        }
    	    },
	        bar: {
	            width: {
	                ratio: 0.8
	            }
	        }
	    });
	
	    
    });
    </script>

 
<div id="chart3"></div>


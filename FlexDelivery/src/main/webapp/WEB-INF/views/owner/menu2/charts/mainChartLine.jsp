<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
    <script type="text/javascript">
    $(function(){
    	
    	$.ajax({
    		url:"<c:url value='/owner/menu2/charts/ordersPrice.do'/>",
    		success:function(res){
    			console.log(res.lList);
    			var label6=[];
    			var label7=[];
    			
    			$.each(res.tList, function(idx, item){
        			
					label6.push(item['ORDERSTOTALPRICE']);
					
				});

				 console.log(label6); 
			
			
				$.each(res.lList, function(idx, item){
			
						label7.push(item['ORDERSTOTALPRICE']);
				
				});
				console.log(label7); 
    			
    			
    			var chart = c3.generate({
    	    		size: {
    	    			height:250
    	    		},
    	    	    bindto: '#chart2',
    	    	    data: {
	    	    	      json : {
	    	    	    	  'data1': label7,
	    	    	    	  'data2': label6
	    	    	      },
	    	          	  names:{
	    	            	data1:'지난주',
	    	            	data2:'이번주'
	    	           	 },
	    	           	 types: {
	    	                 data1: 'area',
	    	                 data2: 'area'
	    	             },
	    	             colors: {
			                 data1: '#D0F20C', 
	 		                data2: '#0C2CF2'
	    	    	    },
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
    		},
    		error:function(xhr,status,error){
    			
    		}
    		
    	});
    	
    });
    </script>

    <div id="chart2"></div>
 
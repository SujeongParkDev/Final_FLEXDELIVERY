<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <script type="text/javascript">
    $(function(){
    	
    	$.ajax({
    		url:"<c:url value='/owner/menu2/charts/ordersCount.do'/>",
    		success:function(res){
    			
    			var label = [];
    			$.each(res.tList, function(idx, item){
    			
    					label.push(item['ORDERSCOUNT']);
    					
    			});

    			 console.log(label); 
    			
    			
    			var label2 = [];
    			$.each(res.lList, function(idx, item){
    			
    					label2.push(item['ORDERSCOUNT']);
    				
    			});
    			console.log(label2); 
    			
    		
		  	
    			
    			var chart4 = c3.generate({
    		    	size:{
    					height:200
    				},
    		    	 bindto: '#chart3',
    		        data: {
  		            	json: {
  		            		'data1': label2,
				    		'data2': label
				    	},	      	
    		            names: {
    			             data1: '지난주', 
    			             data2: '이번주',
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
    		
    		},
    		error:function(xhr,status, error){
    			alert('error:'+ error);
    		}
    		
    	});
    	
   
	   
    });
    </script>

 
<div id="chart3"></div>

